Instance: VSDMBundle-GKV-N456789014
InstanceOf: VSDMBundle
Title: "N456789014 Nachtigall, Nina Nicole (GKV)"
Description: "VSDM 2.0-Daten N456789014 Nachtigall, Nina Nicole (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-N456789014
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-N456789014
  * resource = VSDMPatient-GKV-N456789014
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-N456789014
  * resource = VSDMCoverageGKV-N456789014
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-108028771
  * resource = VSDMPayorOrganization-108028771
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-109083613
  * resource = VSDMPayorOrganization-109083613


Instance: VSDMPatient-GKV-N456789014
InstanceOf: VSDMPatient
Title: "N456789014 Nachtigall, Nina Nicole (GKV)"
Description: "Versichertendaten N456789014 Nachtigall, Nina Nicole (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-N456789014
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

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


Instance: VSDMCoverageGKV-N456789014
InstanceOf: VSDMCoverageGKV
Title: "N456789014 Nachtigall, Nina Nicole (GKV)"
Description: "Versicherungsdaten N456789014 Nachtigall, Nina Nicole (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-N456789014
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc6)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2029-06-22"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-N456789014
* period
  * start = "2011-06-22"
* payor[+]
  * reference = $urlVSDMPayorOrganization-108028771
  * identifier[+].value = "108028771"
  * display = "Beispielkostenträger Nord-Württemberg"
* payor[+]
  * reference = $urlVSDMPayorOrganization-109083613
  * identifier[+].value = "109083613"
  * display = "Beispielkostenträger Niederbayern"
