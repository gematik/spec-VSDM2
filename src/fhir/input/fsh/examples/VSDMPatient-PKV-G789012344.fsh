Instance: VSDMPatient-PKV-G789012344
InstanceOf: VSDMPatient
Title: "G789012344 Edle von der Graugans, Gabriele (PKV)"
Description: "Versichertendaten G789012344 Edle von der Graugans, Gabriele (PKV)"
Usage: #inline

* id = "019aa693-3bb4-7dcf-a4ba-3322947d55dc"
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
* telecom[TIMessengerID]
  * system = $csContactPointSystem#url
  * value = "matrix:@g789012344:demo-ti-messenger"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Am Gänseweiher 66"
    * extension[Hausnummer].valueString = "66"
    * extension[Strasse].valueString = "Am Gänseweiher"
  * city = "Gießen"
  * postalCode = "35392"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
