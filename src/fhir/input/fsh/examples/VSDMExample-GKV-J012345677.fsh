Instance: VSDMBundle-GKV-J012345677
InstanceOf: VSDMBundle
Title: "J012345677 Junko, Jens-Jörg (GKV)"
Description: "VSDM 2.0-Daten J012345677 Junko, Jens-Jörg (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-J012345677
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-J012345677
  * resource = VSDMPatient-GKV-J012345677
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-J012345677
  * resource = VSDMCoverageGKV-J012345677
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-106877150
  * resource = VSDMPayorOrganization-106877150


Instance: VSDMPatient-GKV-J012345677
InstanceOf: VSDMPatient
Title: "J012345677 Junko, Jens-Jörg (GKV)"
Description: "Versichertendaten J012345677 Junko, Jens-Jörg (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-J012345677
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

* identifier[KVNR].value = "J012345677"
* birthDate = "1958-12"
* name[Name]
  * text = "Jens-Jörg Junko"
  * family = "Junko"
    * extension[nachname].valueString = "Junko"
  * given = "Jens-Jörg"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Winterammerstraße 10d"
    * extension[Hausnummer].valueString = "10d"
    * extension[Strasse].valueString = "Winterammerstraße"
  * city = "Baden-Baden"
  * postalCode = "77815"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 98765"
    * extension[Postfach].valueString = "Postfach 98765"
  * city = "Baden-Baden"
  * postalCode = "76530"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-J012345677
InstanceOf: VSDMCoverageGKV
Title: "J012345677 Junko, Jens-Jörg (GKV)"
Description: "Versicherungsdaten J012345677 Junko, Jens-Jörg (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-J012345677
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc6)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[besonderePersonengruppe].valueCoding = #09 "ASY" // "Empfänger von Gesundheitsleistungen nach §§ 4 und 6 des Asylbewerberleistungsgesetzes (AsylbLG)"
* extension[dmp][+]
  * extension[dmp].valueCoding = #06 "COPD"
  * extension[zeitraum].valuePeriod.start =  "2001-01-11"
  * extension[digitalesDMP].valueBoolean = false
* extension[dmp][+]
  * extension[dmp].valueCoding = #09 "Rueckenschmerz"
  * extension[zeitraum].valuePeriod.start = "2002-02-12"
  * extension[digitalesDMP].valueBoolean = true
* extension[dmp][+]
  * extension[dmp].valueCoding = #10 "Rheuma"
  * extension[zeitraum].valuePeriod.start = "2003-03-13"
  * extension[digitalesDMP].valueBoolean = false
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#1 "vollständig"
  * extension[dauer].valuePeriod
    * start = "2025-01-01"
    * end = "2025-12-31"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#5 "Rentner"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-J012345677
* period
  * start = "1964-05-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-106877150
  * identifier[+].value = "106877150"
  * display = "Beispielkostenträger Baden-Baden"
