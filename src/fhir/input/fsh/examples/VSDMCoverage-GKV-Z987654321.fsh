Instance: VSDMCoverage-GKV-Z987654321
InstanceOf: VSDMCoverage
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Description: "Versicherungsdaten Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

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
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-Z987654321"
* period
  * start = "2000-01-01"
  * end = "2029-12-31"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-108213958"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-100293710"
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
