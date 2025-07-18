Instance: VSDMCoverage-A123456780
InstanceOf: VSDMCoverage
Title: "A123456780 Amsel, Andrea"
Description: "Versicherungsdaten A123456780 Amsel, Andrea"
Usage: #example

* extension[WOP].valueCoding = $csWOP#38 "Nordrhein"
* extension[versichertenart].valueCoding = $csVersichertenart#1 "Mitglied"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-A123456780"
* period
  * start = "1997-12-28"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-104178397"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
