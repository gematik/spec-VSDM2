## Usage <a name = "usage"></a>

### Installing FHIR tools on your local machine
**_NOTE:_** If you are using a ['box.fhir' Devbox](https://gitlab.prod.ccs.gematik.solutions/git/Verwaltung/Entwicklungsumgebung/devbox) you should have the neccessary dependencies already installed and this step can be skipped.

Otherwise, the following script installs all necessary tools for specifying fhir resources onto your local machine.

```bash
./scripts/install_fhir_tools.sh
```
(requires admin privileges)

### Run Validation

Run script `validate.sh` to

1. Run sushi FHIR Files generator
2. Validate all files in the `./Resources` folder
3. Get a html output file for each FHIR file in `../validation_results/`

You can use following script options

### Install dependencies from sushi-config.yaml

`-i` installs dependencies with firely.terminal from `./<foldername>/sushi-config.yaml` file

```bash
./validate.sh -i
```

### Sort resulting html files into severity folders

`-s` sorts resulting html files in folders by the severities of the findings.
Categories are: `error`, `warning`, `information` and `unknown`

```bash
./validate.sh -s
```

### Change default folder

`-d foldername` sets foldername for validation. Default is: `./Resources`

```bash
validate.sh -d ./Testresources
```

### Process single file

`-f filename` sets filename for single validation.

```bash
validate.sh -f ./Resources/fsh-generated/resources/myProfile.json
```

### Work with specific version of Hapi Validator

`-v version` defines a version od the used Hapi Validator. If the specified version of the hapi validator is not present the default will be used. Validator-JARs will be downloaded to ~/.fhir/validators/.

```bash
validate.sh -v 5.6.70
```
### Changing of proxy settings
On the first run a config file with the standard proxy settings used by the gematik is created and saved in the scripts folder with the name 'validation_script-config.yaml'.
```yaml
proxy:
  active: true
  address: 192.168.110.10:3128
```
If you want to deactivate the usage of the proxy, set active to 'false'. Or change the ip address if you need another proxy address.
.
# Help

If you find issues with this template project, please leave an issue or create a Pull Request via  the [template repository](https://github.com/gematik/spec-TemplateForSimplifierProjects).