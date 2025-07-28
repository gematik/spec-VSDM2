Instance: VSDMPatient-B234567895
InstanceOf: VSDMPatient
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Description: "Versichertendaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Usage: #example

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
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Buntspechtallee 2A"
    * extension[Hausnummer].valueString = "2a"
    * extension[Strasse].valueString = "Buntspechtallee"
  * city = "Bremen"
  * postalCode = "28211"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
