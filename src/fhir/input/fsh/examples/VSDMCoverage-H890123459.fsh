Instance: VSDMCoverage-H890123459
InstanceOf: VSDMCoverage
Title: "H890123459 vorm Habicht, Hans"
Description: "Versicherungsdaten H890123459 vorm Habicht, Hans"
Usage: #example

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

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
* extension[versichertenart].valueCoding = $csVersichertenart#5 "Rentner"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-H890123459"
* period
  * start = "1953-01-01"
  * end = "2024-03-31"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-102249844"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-102186348"
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
