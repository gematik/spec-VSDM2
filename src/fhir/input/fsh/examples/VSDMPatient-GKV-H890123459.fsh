Instance: VSDMPatient-GKV-H890123459
InstanceOf: VSDMPatient
Title: "H890123459 vorm Habicht, Hans (GKV)"
Description: "Versichertendaten H890123459 vorm Habicht, Hans (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "H890123459"
* birthDate = "1953-07-29"
* name[Name]
  * text = "Dr.-Ing. Hans vorm Habicht"
  * family = "vorm Habicht"
    * extension[nachname].valueString = "Habicht"
    * extension[vorsatzwort].valueString = "vorm"
  * given = "Hans"
  * prefix = "Dr.-Ing."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Habichtpfad 7c"
    * extension[Hausnummer].valueString = "7c"
    * extension[Strasse].valueString = "Habichtpfad"
  * line[+] = "zweite Laube rechts"
    * extension[Adresszusatz].valueString = "zweite Laube rechts"
  * city = "Hildesheim"
  * postalCode = "31135"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
