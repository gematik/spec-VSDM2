Instance: VSDMPatient-GKV-G789012344
InstanceOf: VSDMPatient
Title: "G789012344 Edle von der Graugans, Gabriele (GKV)"
Description: "Versichertendaten G789012344 Edle von der Graugans, Gabriele (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-G789012344
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "G789012344"
* birthDate = "1974-02-12"
* name[Name]
  * text = "Gabriele Edle von der Graugans"
  * family = "Edle von der Graugans"
    * extension[namenszusatz].valueString = "Edle"
    * extension[nachname].valueString = "Graugans"
    * extension[vorsatzwort].valueString = "von der"
  * given = "Gabriele"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Am Gänseweiher 66"
    * extension[Hausnummer].valueString = "66"
    * extension[Strasse].valueString = "Am Gänseweiher"
  * city = "Gießen"
  * postalCode = "35392"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
