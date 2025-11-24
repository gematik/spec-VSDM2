Instance: VSDMCoverageGKV-J012345677
InstanceOf: VSDMCoverageGKV
Title: "J012345677 Junko, Jens-Jörg (GKV)"
Description: "Versicherungsdaten J012345677 Junko, Jens-Jörg (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-J012345677
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

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
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-J012345677
* period
  * start = "1964-05-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-106877150"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
