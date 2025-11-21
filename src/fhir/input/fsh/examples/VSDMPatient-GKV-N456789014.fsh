Instance: VSDMPatient-GKV-N456789014
InstanceOf: VSDMPatient
Title: "N456789014 Nachtigall, Nina Nicole (GKV)"
Description: "Versichertendaten N456789014 Nachtigall, Nina Nicole (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-N456789014
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "N456789014"
* birthDate = "2011-06-22"
* name[Name]
  * text = "Nina Nicole Nachtigall"
  * family = "Nachtigall"
    * extension[nachname].valueString = "Nachtigall"
  * given = "Nina Nicole"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Sängerweg 14"
    * extension[Hausnummer].valueString = "14"
    * extension[Strasse].valueString = "Sängerweg"
  * city = "Stuttgart"
  * postalCode = "70180"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
