Instance: VSDMPatient-GKV-A123456780
InstanceOf: VSDMPatient
Title: "A123456780 Amsel, Andrea (GKV)"
Description: "Versichertendaten A123456780 Amsel, Andrea (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "A123456780"
* birthDate = "1997-12-28"
* name[Name]
  * text = "Andrea Amsel"
  * family = "Amsel"
    * extension[nachname].valueString = "Amsel"
  * given = "Andrea"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Amselweg 1"
    * extension[Hausnummer].valueString = "1"
    * extension[Strasse].valueString = "Amselweg"
  * city = "Aachen"
  * postalCode = "52070"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
