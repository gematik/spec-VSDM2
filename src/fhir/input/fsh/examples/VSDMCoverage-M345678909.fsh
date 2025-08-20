Instance: VSDMCoverage-M345678909
InstanceOf: VSDMCoverage
Title: "M345678909 Mittelspecht, Michael-Martin"
Description: "Versicherungsdaten M345678909 Mittelspecht, Michael-Martin"
Usage: #example

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[WOP].valueCoding = $csWOP#71 "Bayern"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2038-04-28"
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-M345678909"
* period
  * start = "2020-04-27"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-108416806"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
