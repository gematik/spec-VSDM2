Instance: VSDMCoverage-O567890128
InstanceOf: VSDMCoverage
Title: "O567890128 Ortolan, Oliver"
Description: "Versicherungsdaten O567890128 Ortolan, Oliver"
Usage: #example

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2027-06-09"
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-O567890128"
* period
  * start = "2009-06-08"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107668422"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
