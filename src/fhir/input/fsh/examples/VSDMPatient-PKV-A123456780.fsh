Instance: VSDMPatient-PKV-A123456780
InstanceOf: VSDMPatient
Title: "A123456780 Amsel, Andrea (PKV)"
Description: "Versichertendaten A123456780 Amsel, Andrea (PKV)"
Usage: #inline

* id = "019aa693-9ea6-7def-832d-27bb1eb8997f"
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "A123456780"
* birthDate = "1997-12-28"
* name[Name]
  * text = "Andrea Amsel"
  * family = "Amsel"
    * extension[nachname].valueString = "Amsel"
  * given = "Andrea"
* telecom[TIMessengerID]
  * system = $csContactPointSystem#url
  * value = "matrix:@a123456780:demo-ti-messenger"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Amselweg 1"
    * extension[Hausnummer].valueString = "1"
    * extension[Strasse].valueString = "Amselweg"
  * city = "Aachen"
  * postalCode = "52070"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
