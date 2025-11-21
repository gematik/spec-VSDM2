Instance: VSDMPatient-GKV-J012345677
InstanceOf: VSDMPatient
Title: "J012345677 Junko, Jens-Jörg (GKV)"
Description: "Versichertendaten J012345677 Junko, Jens-Jörg (GKV)"
Usage: #inline

* id = "019aa694-120e-7e8a-8f0b-701ea96908c8"
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "J012345677"
* birthDate = "1958-12"
* name[Name]
  * text = "Jens-Jörg Junko"
  * family = "Junko"
    * extension[nachname].valueString = "Junko"
  * given = "Jens-Jörg"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Winterammerstraße 10d"
    * extension[Hausnummer].valueString = "10d"
    * extension[Strasse].valueString = "Winterammerstraße"
  * city = "Baden-Baden"
  * postalCode = "77815"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 98765"
    * extension[Postfach].valueString = "Postfach 98765"
  * city = "Baden-Baden"
  * postalCode = "76530"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
