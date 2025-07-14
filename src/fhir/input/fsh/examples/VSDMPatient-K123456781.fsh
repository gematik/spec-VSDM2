Instance: VSDMPatient-K123456781
InstanceOf: VSDMPatient
Title: "K123456781 Kiebitz, Karin"
Description: "Versichertendaten K123456781 Kiebitz, Karin"
Usage: #example

* identifier[KVNR].value = "K123456781"
* birthDate = "1933"
* name[Name]
  * text = "Karin Kiebitz"
  * family = "Kiebitz"
    * extension[nachname].valueString = "Kiebitz"
  * given = "Karin"
* gender = #female
* address[PostfachAdresse]
  * line[+] = "Postfach 554433"
    * extension[Postfach].valueString = "Postfach 554433"
  * city = "Luxembourg"
  * postalCode = "1120"
  * country = $csCountryCodeISO3166#LU
    * extension[Laenderkennzeichen].valueCoding = #L "Luxemburg"
