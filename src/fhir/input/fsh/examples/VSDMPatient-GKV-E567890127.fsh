Instance: VSDMPatient-GKV-E567890127
InstanceOf: VSDMPatient
Title: "E567890127 Freifrau an der Elster, Elke (GKV)"
Description: "Versichertendaten E567890127 Freifrau an der Elster, Elke (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-E567890127
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "E567890127"
* birthDate = "1992-11-13"
* name[Name]
  * text = "Elke Freifrau an der Elster"
  * family = "Freifrau an der Elster"
    * extension[namenszusatz].valueString = "Freifrau"
    * extension[nachname].valueString = "Elster"
    * extension[vorsatzwort].valueString = "an der"
  * given = "Elke"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Elsterstraße 5"
    * extension[Hausnummer].valueString = "5"
    * extension[Strasse].valueString = "Elsterstraße"
  * city = "Erfurt"
  * postalCode = "99095"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 9821"
    * extension[Postfach].valueString = "Postfach 9821"
  * city = "Graz"
  * postalCode = "8055"
  * country = "Österreich"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#AT
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#A
