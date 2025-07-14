Instance: VSDMCoverage-C345678908
InstanceOf: VSDMCoverage
Title: "C345678908 Carolinataube, Charlie"
Description: "Versicherungsdaten C345678908 Carolinataube, Charlie"
Usage: #example

* extension[WOP].valueCoding = $csWOP#98 "Sachsen"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod.start = "2001-01-01"
  * extension[digitalesDMP].valueBoolean = false
* extension[dmp][+]
  * extension[dmp].valueCoding = #08 "Depression"
  * extension[zeitraum].valuePeriod
    * start = "2020-01-01"
    * end = "2023-12-31"
  * extension[digitalesDMP].valueBoolean = true
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenart#1 "Mitglied"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-C345678908"
* period
  * start = "1979-06-11"
  * end = "2027-01-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization107723372"
  * extension[kostentraegerRolle].valueCoding = #H "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
