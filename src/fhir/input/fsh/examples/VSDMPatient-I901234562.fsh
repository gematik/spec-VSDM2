Instance: VSDMPatient-I901234562
InstanceOf: VSDMPatient
Title: "I901234562 Ibis, Ingrid"
Description: "Versichertendaten I901234562 Ibis, Ingrid"
Usage: #example

* identifier[KVNR].value = "I901234562"
* birthDate = "1942-02-28"
* name[Name]
  * text = "Ingrid Ibis"
  * family = "Ibis"
    * extension[nachname].valueString = "Ibis"
  * given = "Ingrid"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Im Balz 95"
    * extension[Hausnummer].valueString = "95"
    * extension[Strasse].valueString = "Im Balz"
  * city = "Fischbach"
  * postalCode = "7430"
  * country = $csCountryCodeISO3166#LU
    * extension[Laenderkennzeichen].valueCoding = #L "Luxemburg"
