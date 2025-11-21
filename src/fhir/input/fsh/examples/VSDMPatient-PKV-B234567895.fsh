Instance: VSDMPatient-PKV-B234567895
InstanceOf: VSDMPatient
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Description: "Versichertendaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-B234567895
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "B234567895"
* birthDate = "1988-06-22"
* name[Name]
  * text = "Dr. med. Bernd Benjamin Graf von und zu Buntspecht"
  * family = "Graf von und zu Buntspecht"
    * extension[namenszusatz].valueString = "Graf"
    * extension[nachname].valueString = "Buntspecht"
    * extension[vorsatzwort].valueString = "von und zu"
  * given = "Bernd Benjamin"
  * prefix = "Dr. med."
    * extension[prefix-qualifier].valueCode = #AC
* telecom[TIMessengerID]
  * system = $csContactPointSystem#url
  * value = "matrix:@b234567895:demo-ti-messenger"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Buntspechtallee 2A"
    * extension[Hausnummer].valueString = "2a"
    * extension[Strasse].valueString = "Buntspechtallee"
  * city = "Bremen"
  * postalCode = "28211"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
