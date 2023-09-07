#!/bin/bash

GREEN='\033[0;32m'
LGREEN'\033[1;32m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m'            # No Color
validatorversion=5.6.48 #issue https://github.com/hapifhir/org.hl7.fhir.core/issues/825 is preventing a further update
outputfolder=./validation_results
foldername='./Resources'
external_dependency_folder="./ExternalDependencies"
fhir_folder_path=~/.fhir/packages
file=''
sort_results="false"
proxy_active=true
proxy_address="192.168.110.10:3128"
declare -a dependencies
folders_to_validate

print_usage() {
  printf "Usage:
  [-d foldername] sets foldername for validation. Default is: '../Resources'
  [-f filename] sets filename for single validation.
  [-i] installs dpendencies with firely.terminal from './Resources/sushi-config.yaml' file
  [-s] sorts resulting html files in folders by the severities of the findings. Categories are: error, warning, information and unknown
  [-v version] specifies the version of the used Hapi Validator. Example: -v 5.6.48\n"
}

sortBySeverity() {
  f="$(basename $1 .json)"
  if grep -q '<td>ERROR</td>' "$1"; then
    echo -e "${RED}ERROR${NC} in '$f'"
    mkdir -p "$outputfolder""/error"
    mv "$1" "$outputfolder""/error/"$f
  elif grep -q '<td>All OK</td>' "$1"; then
    echo -e "${GREEN}ALL OK${NC} in '$f'"
    mkdir -p "$outputfolder""/all_ok"
    mv "$1" "$outputfolder""/all_ok/"$f
  elif grep -q '<td>WARNING</td>' "$1"; then
    echo -e "${ORANGE}WARNING${NC} in  '$f'"
    mkdir -p "$outputfolder""/warning"
    mv "$1" "$outputfolder""/warning/"$f
  elif grep -q '<td>INFORMATION</td>' "$1"; then
    echo -e "${LGREEN}INFORMATION${NC} in '$f'"
    mkdir -p "$outputfolder""/information"
    mv "$1" "$outputfolder""/information/"$f
  else
    echo "UNKNOWN STATE for '$f'"
    mkdir -p "$outputfolder""/unknown"
    mv "$1" "$outputfolder""/unknown/"$f
  fi
}

getDependencies() {
  readarray dependencies < <(yq e '.dependencies' $foldername/sushi-config.yaml)
}

checkAndDownloadDependencies() {
  getDependencies
  folders_to_validate=" -ig $fhir_folder_path"
  for dependency in "${dependencies[@]}"; do
    IFS=: read -r package version <<<"$dependency"
    if [[ ${package:0:1} != "#" ]]; then
      version="${version// /}"
      package_dir="$fhir_folder_path/$package#$version/package"
      folders_to_validate+=" -ig ${package_dir}"
      if [ -d "$package_dir" ]; then
        # Take action if $DIR exists. #
        echo "[INFO] Found $package with version $version in folder $package_dir"
      else
        echo "[INFO] Did not find $package with version $version in folder $package_dir"
        fhir install "$package" "$version"
      fi
    fi
  done
}

renameFhirFolderToLowerCase() {
  echo -e "[INFO] Rename all folder names in .fhir folder to lower case"
  for i in $( (ls -d $fhir_folder_path/* | grep [A-Z])); do
    rename -v 'y/A-Z/a-z/' $i
  done
}

function validate_url() {
  if [[ $(wget -S --spider $1 2>&1 | grep 'HTTP/1.1 200 OK') ]]; then
    return 0
  else
    return 1
  fi
}

checkOrCreateConfigFile() {
  configurationfile="scripts/validation_script-config.yaml"
  if test -e $configurationfile; then
    echo "[INFO] Configurationfile '$configurationfile' found."
    readarray proxySettings < <(yq e '.proxy' $configurationfile)
    IFS=: read -r a active <<<"${proxySettings[0]}"
    if [ $active == "true" ]; then
      IFS=: read -r b proxy_address_new <<<"${proxySettings[1]}"
      proxy_address_new=${proxy_address_new//[[:blank:]]/}
      if [ "$proxy_address" != "$proxy_address_new" ]; then
        proxy_address=$proxy_address_new
        echo "[INFO] Updated proxy address to $proxy_address"
      fi
    else
      echo "[INFO] Deactivated proxy usage."
      proxy_active=false
    fi

  else
    echo "proxy:" >>$configurationfile
    echo "  active: true" >>$configurationfile
    echo "  address: 192.168.110.10:3128" >>$configurationfile
    echo "[INFO] Written new '$configurationfile'. Please change proxy settings if needed."
  fi
}

checkAndDownloadHapiValidator() {
  validatorversion_underscore=${validatorversion//./_}
  validatordestination=~/.fhir/validators/validator_cli_v$validatorversion_underscore.jar
  if test -e "$validatordestination"; then
    echo "[INFO] HAPI Validator found at '$validatordestination'"
  else
    validatorsource=https://github.com/hapifhir/org.hl7.fhir.core/releases/download/$validatorversion/validator_cli.jar
    echo "[INFO] HAPI Validator not found. Starting to download HAPI Validator from $validatorsource ..."
    parentdir="$(dirname "$validatordestination")"
    mkdir -p "$parentdir"
    if validate_url $validatorsource; then
      wget $validatorsource -O $validatordestination
    else
      echo -e "${RED}[ERROR] Unable to Download Hapi Validator in version $validatorversion. Script will end here. ${NC}"
      exit 0
    fi
  fi
}

runSushi() {
  echo -e "Starting Sushi to process files in '$foldername'"
  sushi $foldername
}

moveExternalDependencies() {
  if [ -d "$external_dependency_folder" ]; then
    echo "[INFO] copying external dependecies to $fhir_folder_path"
    cp -a $external_dependency_folder/. $fhir_folder_path/
  else
    echo -e "${ORANGE}[Warning] $external_dependency_folder missing. No external dependencies will be copied!${NC}"
  fi
}

runHapiValidator() {
  validatorversion_underscore=${validatorversion//./_}
  validatordestination=~/.fhir/validators/validator_cli_v$validatorversion_underscore.jar
  # Proxy Settings
  proxy_string=""
  if [ $proxy_active == "true" ]; then
    proxy_string="-proxy $proxy_address"
  fi

  # Only validating one file?
  if [ -z "$file" ]; then
    echo "[INFO] Validating files in folder '$foldername/fsh-generated/resources/' ..."
    # Run Validator on all *.json files in given directory
    for filename in $(find "$foldername"/fsh-generated/resources/ -name '*.json'); do
      f="$(basename "$filename")"
      resultfile=$outputfolder"/$f.html"
      echo -e "[INFO] \n\nProcessing file \033[1m $f \033[0m"
      java -jar "$validatordestination" -version 4.0.1 $folders_to_validate -ig $foldername/fsh-generated/resources $filename $proxy_string -jurisdiction DE -output $resultfile
      if [ $sort_results == "true" ]; then
        sortBySeverity "$resultfile"
      fi
    done
  else
    echo -e "Processing \033[1m $file \033[0m"
    echo -e "\n\nProfiles to load for validation: $folders_to_validate"
    result_filename="$(basename "$file")"
    #   += "-ig $package/package"
    java -jar $validatordestination -version 4.0.1 $folders_to_validate -ig $foldername/fsh-generated/resources $file $proxy_string -jurisdiction DE -output $outputfolder"/$result_filename.html"
    if [ $sort_results == "true" ]; then
      sortBySeverity "$outputfolder""/$result_filename.html"
    fi
  fi

}

while getopts 'd:f:v:is' flag; do
  case "${flag}" in
  d) foldername="${OPTARG}" ;;
  f) file="${OPTARG}" ;;
  s) sort_results="true" ;;
  v) validatorversion="${OPTARG}" ;;
  ?)
    print_usage
    exit 1
    ;;
  esac
done

clear
# create new output folder
rm -rf "$outputfolder"
mkdir -p "$outputfolder"
echo "[INFO] Validation output is written to '$outputfolder'"

checkOrCreateConfigFile
renameFhirFolderToLowerCase
checkAndDownloadHapiValidator
runSushi
moveExternalDependencies
checkAndDownloadDependencies
runHapiValidator
