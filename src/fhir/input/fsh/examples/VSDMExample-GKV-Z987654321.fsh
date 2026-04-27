Instance: VSDMBundle-GKV-Z987654321
InstanceOf: VSDMBundle
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Description: "VSDM 2.0-Daten Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-Z987654321
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.1-dev)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-Z987654321
  * resource = VSDMPatient-GKV-Z987654321
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-Z987654321
  * resource = VSDMCoverageGKV-Z987654321
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-108213958
  * resource = VSDMPayorOrganization-108213958
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-100293710
  * resource = VSDMPayorOrganization-100293710


Instance: VSDMPatient-GKV-Z987654321
InstanceOf: VSDMPatient
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Description: "Versichertendaten Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-Z987654321
* meta.profile[0] = Canonical(VSDMPatient|1.0.1-dev)

* identifier[KVNR].value = "Z987654321"
* birthDate = "1987-05-16"
* name[Name]
  * text = "Prof. Dr. rer. nat. Zacharias Graf von und zu Zaunkönig"
  * family = "Graf von und zu Zaunkönig"
    * extension[namenszusatz].valueString = "Graf"
    * extension[nachname].valueString = "Zaunkönig"
    * extension[vorsatzwort].valueString = "von und zu"
  * given = "Zacharias"
  * prefix = "Prof. Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#X "unbestimmt"
* address[StrassenAdresse]
  * line[+] = "Zaunkönigpfad 99x"
    * extension[Hausnummer].valueString = "99x"
    * extension[Strasse].valueString = "Zaunkönigpfad"
  * line[+] = "zweites Nest rechter Ast"
    * extension[Adresszusatz].valueString = "zweites Nest rechter Ast"
  * city = "Zwickau"
  * postalCode = "08066"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 885522"
    * extension[Postfach].valueString = "Postfach 885522"
  * city = "Zwickau"
  * postalCode = "08062"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-Z987654321
InstanceOf: VSDMCoverageGKV
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Description: "Versicherungsdaten Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-Z987654321
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
* extension[besonderePersonengruppe].valueCoding = #07 "SVA1" // "SVA-Kennzeichnung für zwischenstaatliches Krankenversicherungsrecht"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2025-12-31"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#1 "vollständig"
  * extension[dauer].valuePeriod
    * start = "2025-01-01"
    * end = "2025-12-31"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-Z987654321
* period
  * start = "2000-01-01"
  * end = "2029-12-31"
* payor[+]
  * reference = $urlVSDMPayorOrganization-108213958
  * identifier[+].value = "108213958"
  * display = "Beispielkostenträger Leipzig"
* payor[+]
  * reference = $urlVSDMPayorOrganization-100293710
  * identifier[+].value = "100293710"
  * display = "Beispielkostenträger Schwerin"
