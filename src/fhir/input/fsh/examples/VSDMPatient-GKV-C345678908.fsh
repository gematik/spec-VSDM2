Instance: VSDMPatient-GKV-C345678908
InstanceOf: VSDMPatient
Title: "C345678908 Carolinataube, Charlie (GKV)"
Description: "Versichertendaten C345678908 Carolinataube, Charlie (GKV)"
Usage: #inline

* id = "019aa694-7e82-76ba-9b71-cbb1456f219e"
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "C345678908"
* birthDate = "1979-06-11"
* name[Name]
  * text = "Charlie Carolinataube"
  * family = "Carolinataube"
    * extension[nachname].valueString = "Carolinataube"
  * given = "Charlie"
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#D "divers"
* address[StrassenAdresse]
  * line[+] = "Taubenweg 3c"
    * extension[Hausnummer].valueString = "3c"
    * extension[Strasse].valueString = "Taubenweg"
  * line[+] = "zweites Hinterhaus links"
    * extension[Adresszusatz].valueString = "Hinterhaus links"
  * city = "Chemnitz"
  * postalCode = "09128"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
