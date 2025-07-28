Instance: VSDMPatient-C345678908
InstanceOf: VSDMPatient
Title: "C345678908 Carolinataube, Charlie"
Description: "Versichertendaten C345678908 Carolinataube, Charlie"
Usage: #example

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "C345678908"
* birthDate = "1979-06-11"
* name[Name]
  * text = "Charlie Carolinataube"
  * family = "Carolinataube"
    * extension[nachname].valueString = "Carolinataube"
  * given = "Charlie"
* gender = #other
  * extension[other-amtlich].valueCoding = #D "divers"
* address[StrassenAdresse]
  * line[+] = "Taubenweg 3c"
    * extension[Hausnummer].valueString = "3c"
    * extension[Strasse].valueString = "Taubenweg"
  * line[+] = "zweites Hinterhaus links"
    * extension[Adresszusatz].valueString = "Hinterhaus links"
  * city = "Chemnitz"
  * postalCode = "09128"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
