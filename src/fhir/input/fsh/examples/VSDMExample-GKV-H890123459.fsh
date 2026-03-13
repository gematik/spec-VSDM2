Instance: VSDMBundle-GKV-H890123459
InstanceOf: VSDMBundle
Title: "H890123459 vorm Habicht, Hans (GKV)"
Description: "VSDM 2.0-Daten H890123459 vorm Habicht, Hans (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-H890123459
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc7)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-H890123459
  * resource = VSDMPatient-GKV-H890123459
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-H890123459
  * resource = VSDMCoverageGKV-H890123459
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-102249844
  * resource = VSDMPayorOrganization-102249844
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-102186348
  * resource = VSDMPayorOrganization-102186348


Instance: VSDMPatient-GKV-H890123459
InstanceOf: VSDMPatient
Title: "H890123459 vorm Habicht, Hans (GKV)"
Description: "Versichertendaten H890123459 vorm Habicht, Hans (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-H890123459
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc7)

* identifier[KVNR].value = "H890123459"
* birthDate = "1953-07-29"
* name[Name]
  * text = "Dr.-Ing. Hans vorm Habicht"
  * family = "vorm Habicht"
    * extension[nachname].valueString = "Habicht"
    * extension[vorsatzwort].valueString = "vorm"
  * given = "Hans"
  * prefix = "Dr.-Ing."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Habichtpfad 7c"
    * extension[Hausnummer].valueString = "7c"
    * extension[Strasse].valueString = "Habichtpfad"
  * line[+] = "zweite Laube rechts"
    * extension[Adresszusatz].valueString = "zweite Laube rechts"
  * city = "Hildesheim"
  * postalCode = "31135"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-H890123459
InstanceOf: VSDMCoverageGKV
Title: "H890123459 vorm Habicht, Hans (GKV)"
Description: "Versicherungsdaten H890123459 vorm Habicht, Hans (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-H890123459
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc7)

* extension[WOP].valueCoding = $csWOP#17 "Niedersachsen" 
* extension[besonderePersonengruppe].valueCoding = #07 "SVA1" // "SVA-Kennzeichnung für zwischenstaatliches Krankenversicherungsrecht: - Personen mit Wohnsitz im Inland, Abrechnung nach Aufwand"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2024-03-31"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "DM2" // "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod
    * start = "2001-01-01"
    * end = "2024-03-31"
  * extension[digitalesDMP].valueBoolean = false
* extension[dmp][+]
  * extension[dmp].valueCoding = #06 "COPD"
  * extension[zeitraum].valuePeriod
    * start = "2020-01-01"
    * end = "2023-12-31"
  * extension[digitalesDMP].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#5 "Rentner"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-H890123459
* period
  * start = "1953-01-01"
  * end = "2024-03-31"
* payor[+]
  * reference = $urlVSDMPayorOrganization-102249844
  * identifier[+].value = "102249844"
  * display = "Beispielkostenträger Hildesheim"
* payor[+]
  * reference = $urlVSDMPayorOrganization-102186348
  * identifier[+].value = "102186348"
  * display = "Beispielkostenträger Hannover"
