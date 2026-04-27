Instance: VSDMBundle-GKV-C345678908
InstanceOf: VSDMBundle
Title: "C345678908 Carolinataube, Charlie (GKV)"
Description: "VSDM 2.0-Daten C345678908 Carolinataube, Charlie (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-C345678908
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.1-dev)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-C345678908
  * resource = VSDMPatient-GKV-C345678908
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-C345678908
  * resource = VSDMCoverageGKV-C345678908
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-107723372
  * resource = VSDMPayorOrganization-107723372


Instance: VSDMPatient-GKV-C345678908
InstanceOf: VSDMPatient
Title: "C345678908 Carolinataube, Charlie (GKV)"
Description: "Versichertendaten C345678908 Carolinataube, Charlie (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-C345678908
* meta.profile[0] = Canonical(VSDMPatient|1.0.1-dev)

* identifier[KVNR].value = "C345678908"
* birthDate = "1979-06-11"
* name[Name]
  * text = "Charlie Carolinataube"
  * family = "Carolinataube"
    * extension[nachname].valueString = "Carolinataube"
  * given = "Charlie"
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#D "divers"
* address[StrassenAdresse]
  * line[+] = "Taubenweg 3c"
    * extension[Hausnummer].valueString = "3c"
    * extension[Strasse].valueString = "Taubenweg"
  * line[+] = "zweites Hinterhaus links"
    * extension[Adresszusatz].valueString = "Hinterhaus links"
  * city = "Chemnitz"
  * postalCode = "09128"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-C345678908
InstanceOf: VSDMCoverageGKV
Title: "C345678908 Carolinataube, Charlie (GKV)"
Description: "Versicherungsdaten C345678908 Carolinataube, Charlie (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-C345678908
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.1-dev)

* extension[WOP].valueCoding = $csWOP#98 "Sachsen"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "DM2" // "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod.start = "2001-01-01"
  * extension[digitalesDMP].valueBoolean = false
* extension[dmp][+]
  * extension[dmp].valueCoding = #08 "Depression"
  * extension[zeitraum].valuePeriod
    * start = "2020-01-01"
    * end = "2023-12-31"
  * extension[digitalesDMP].valueBoolean = true
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#1 "Mitglieder"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-C345678908
* period
  * start = "1979-06-11"
  * end = "2027-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-107723372
  * identifier[+].value = "107723372"
  * display = "Beispielkostenträger Chemnitz"
