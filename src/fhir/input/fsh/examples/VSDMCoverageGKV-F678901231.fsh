Instance: VSDMCoverageGKV-F678901231
InstanceOf: VSDMCoverageGKV
Title: "F678901231 von Fasan, Frank Florian (GKV)"
Description: "Versicherungsdaten F678901231 von Fasan, Frank Florian (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-F678901231
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[besonderePersonengruppe].valueCoding = #08 "SVA2" // "SVA-Kennzeichnung, pauschal"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2026-09-30"
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#1 "vollständig"
  * extension[dauer].valuePeriod.start = "2025-01-01"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-F678901231
* period
  * start = "1992-12-01"
  * end = "2027-06-30"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107403308"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
