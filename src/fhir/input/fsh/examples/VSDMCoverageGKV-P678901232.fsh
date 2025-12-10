Instance: VSDMCoverageGKV-P678901232
InstanceOf: VSDMCoverageGKV
Title: "P678901232 Pinguin, Paula (GKV)"
Description: "Versicherungsdaten P678901232 Pinguin, Paula (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-P678901232
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2027-06-09"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-P678901232
* period
  * start = "2009-06-08"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107668422"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
