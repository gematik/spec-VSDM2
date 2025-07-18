Instance: VSDMPatient-D456789013
InstanceOf: VSDMPatient
Title: "D456789013 Dohle, Dara"
Description: "Versichertendaten D456789013 Dohle, Dara"
Usage: #example

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "D456789013"
* birthDate = "1970-01-20"
* name[Name]
  * text = "Dr. rer. nat. Dara Dohle"
  * family = "Dohle"
    * extension[nachname].valueString = "Dohle"
  * given = "Dara"
  * prefix = "Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #other
  * extension[other-amtlich].valueCoding = #X "unbestimmt"
* address[StrassenAdresse]
  * line[+] = "Dohlenallee 4-6"
    * extension[Hausnummer].valueString = "4-6"
    * extension[Strasse].valueString = "Blumenweg"
  * city = "Darmstadt"
  * postalCode = "64297"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
* address[PostfachAdresse]
  * line[+] = "Postfach 405060"
    * extension[Postfach].valueString = "Postfach 405060"
  * city = "Darmstadt"
  * postalCode = "64283"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
