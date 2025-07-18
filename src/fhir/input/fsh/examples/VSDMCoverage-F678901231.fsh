Instance: VSDMCoverage-F678901231
InstanceOf: VSDMCoverage
Title: "F678901231 von Fasan, Frank Florian"
Description: "Versicherungsdaten F678901231 von Fasan, Frank Florian"
Usage: #example

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[besonderePersonengruppe].valueCoding = #08 "SVA-Kennzeichnung, pauschal"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2026-09-30"
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = #1 "vollständig"
  * extension[dauer].valuePeriod.start = "2025-01-01"
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienversicherter"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-F678901231"
* period
  * start = "1992-12-01"
  * end = "2027-06-30"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107403308"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
