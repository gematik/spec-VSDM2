Instance: VSDMCoverageGKV-O567890128
InstanceOf: VSDMCoverageGKV
Title: "O567890128 Ortolan, Oliver (GKV)"
Description: "Versicherungsdaten O567890128 Ortolan, Oliver (GKV)"
Usage: #inline

* id = "019aa695-6296-743f-a1d0-f3a354ed1475"
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2027-06-09"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-O567890128"
* period
  * start = "2009-06-08"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107668422"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
