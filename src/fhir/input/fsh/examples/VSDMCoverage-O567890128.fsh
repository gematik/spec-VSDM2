Instance: VSDMCoverage-O567890128
InstanceOf: VSDMCoverage
Title: "O567890128 Ortolan, Oliver"
Description: "Versicherungsdaten O567890128 Ortolan, Oliver"
Usage: #example

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2027-06-09"
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienversicherter"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-O567890128"
* period
  * start = "2009-06-08"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization107668422"
  * extension[kostentraegerRolle].valueCoding = #H "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
