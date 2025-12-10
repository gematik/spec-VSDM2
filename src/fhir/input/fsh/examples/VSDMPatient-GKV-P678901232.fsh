Instance: VSDMPatient-GKV-P678901232
InstanceOf: VSDMPatient
Title: "P678901232 Pinguin, Paula (GKV)"
Description: "Versichertendaten P678901232 Pinguin, Paula (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-P678901232
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "P678901232"
* birthDate = "2009-06-08"
* name[Name]
  * text = "Paula Pinguin"
  * family = "Pinguin"
    * extension[nachname].valueString = "Pinguin"
  * given = "Paula"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Rruga e UQK-se N:62"
    * extension[Hausnummer].valueString = "62"
    * extension[Strasse].valueString = "Rruga e UQK-se"
  * city = "Prishtina"
  * postalCode = "10000"
  * country = "Kosovo"
    * extension[temporaryCountryCode].valueCoding = VSDMISO3166ErgaenzungCS#XK
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#KOS
