Instance: VSDMCoverage-K123456781
InstanceOf: VSDMCoverage
Title: "K123456781 Kiebitz, Karin"
Description: "Versicherungsdaten K123456781 Kiebitz, Karin"
Usage: #example

* extension[WOP].valueCoding = $csWOP#46 "Hessen"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = false
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = #2 "eingeschränkt"
  * extension[dauer].valuePeriod.start = "2024-06-15"
* extension[versichertenart].valueCoding = $csVersichertenart#5 "Rentner und ihre Familienangehörigen"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-K123456781"
* period
  * start = "2022-04-01"
  * end = "2027-07-31"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization105532787"
  * extension[kostentraegerRolle].valueCoding = #H "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/VSDMPayorOrganization106339922"
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
