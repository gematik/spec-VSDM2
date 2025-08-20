Instance: VSDMCoverage-GKV-B234567895
InstanceOf: VSDMCoverage
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Description: "Versicherungsdaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[WOP].valueCoding = $csWOP#03 "Bremen"
* extension[besonderePersonengruppe].valueCoding = #04 "SOZ" // "BSHG (Bundessozialhilfegesetz) § 264 SGB V"
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-B234567895"
* period
  * start = "2011-04-01"
  * end = "2024-12-31"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-103169760"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-103215857"
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
