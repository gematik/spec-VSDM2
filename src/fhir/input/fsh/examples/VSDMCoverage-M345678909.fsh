Instance: VSDMCoverage-M345678909
InstanceOf: VSDMCoverage
Title: "M345678909 Mittelspecht, Michael-Martin"
Description: "Versicherungsdaten M345678909 Mittelspecht, Michael-Martin"
Usage: #example

* extension[WOP].valueCoding = $csWOP#71 "Bayern"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2038-04-28"
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienversicherter"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-M345678909"
* period
  * start = "2020-04-27"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization108416806"
  * extension[kostentraegerRolle].valueCoding = #H "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
