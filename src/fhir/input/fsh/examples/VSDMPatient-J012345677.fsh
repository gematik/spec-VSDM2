Instance: VSDMPatient-J012345677
InstanceOf: VSDMPatient
Title: "J012345677 Junko, Jens-Jörg"
Description: "Versichertendaten J012345677 Junko, Jens-Jörg"
Usage: #example

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
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
* address[PostfachAdresse]
  * line[+] = "Postfach 98765"
    * extension[Postfach].valueString = "Postfach 98765"
  * city = "Baden-Baden"
  * postalCode = "76530"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
