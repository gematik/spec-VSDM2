Instance: VSDMBundle-GKV-L234567896
InstanceOf: VSDMBundle
Title: "L234567896 Lachmöwe, Lisa (GKV)"
Description: "VSDM 2.0-Daten L234567896 Lachmöwe, Lisa (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-L234567896
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-L234567896
  * resource = VSDMPatient-GKV-L234567896
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-L234567896
  * resource = VSDMCoverageGKV-L234567896
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-102343996
  * resource = VSDMPayorOrganization-102343996


Instance: VSDMPatient-GKV-L234567896
InstanceOf: VSDMPatient
Title: "L234567896 Lachmöwe, Lisa (GKV)"
Description: "Versichertendaten L234567896 Lachmöwe, Lisa (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-L234567896
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

* identifier[KVNR].value = "L234567896"
* birthDate = "2022-07-02"
* name[Name]
  * text = "Lisa Lachmöwe"
  * family = "Lachmöwe"
    * extension[nachname].valueString = "Lachmöwe"
  * given = "Lisa"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Möwenstraße 12b"
    * extension[Hausnummer].valueString = "12b"
    * extension[Strasse].valueString = "Möwenstraße"
  * city = "Lüneburg"
  * postalCode = "21337"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-L234567896
InstanceOf: VSDMCoverageGKV
Title: "L234567896 Lachmöwe, Lisa (GKV)"
Description: "Versicherungsdaten L234567896 Lachmöwe, Lisa (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-L234567896
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc6)

* extension[WOP].valueCoding = $csWOP#17 "Niedersachsen" 
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2040-07-02"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-L234567896
* period
  * start = "2022-07-02"
* payor[+]
  * reference = $urlVSDMPayorOrganization-102343996
  * identifier[+].value = "102343996"
  * display = "Beispielkostenträger Lüneburg"
