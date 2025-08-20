Instance: VSDMPatient-GKV-O567890128
InstanceOf: VSDMPatient
Title: "O567890128 Ortolan, Oliver"
Description: "Versichertendaten O567890128 Ortolan, Oliver"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "O567890128"
* birthDate = "2009-06-08"
* name[Name]
  * text = "Oliver Ortolan"
  * family = "Ortolan"
    * extension[nachname].valueString = "Ortolan"
  * given = "Oliver"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Gartenammerstraße 15"
    * extension[Hausnummer].valueString = "15"
    * extension[Strasse].valueString = "Gartenammerstraße"
  * line[+] = "Vorderhaus"
    * extension[Adresszusatz].valueString = "Vorderhaus"
  * city = "Offenburg"
  * postalCode = "77654"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
