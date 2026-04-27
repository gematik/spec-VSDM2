Instance: VSDMBundle-GKV-I901234562
InstanceOf: VSDMBundle
Title: "I901234562 Ibis, Ingrid (GKV)"
Description: "VSDM 2.0-Daten I901234562 Ibis, Ingrid (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-I901234562
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-I901234562
  * resource = VSDMPatient-GKV-I901234562
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-I901234562
  * resource = VSDMCoverageGKV-I901234562
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-107933230
  * resource = VSDMPayorOrganization-107933230


Instance: VSDMPatient-GKV-I901234562
InstanceOf: VSDMPatient
Title: "I901234562 Ibis, Ingrid (GKV)"
Description: "Versichertendaten I901234562 Ibis, Ingrid (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-I901234562
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

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
  * country = "Luxemburg"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#LU
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#L


Instance: VSDMCoverageGKV-I901234562
InstanceOf: VSDMCoverageGKV
Title: "I901234562 Ibis, Ingrid (GKV)"
Description: "Versicherungsdaten I901234562 Ibis, Ingrid (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-I901234562
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#98 "Sachsen"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "DM2" // "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod
    * start = "2021-02-07"
    * end = "2028-02-15"
  * extension[digitalesDMP].valueBoolean = false
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#5 "Rentner"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-I901234562
* period
  * start = "1942-02-28"
  * end = "2028-02-15"
* payor[+]
  * reference = $urlVSDMPayorOrganization-107933230
  * identifier[+].value = "107933230"
  * display = "Beispielkostenträger Dresden"
