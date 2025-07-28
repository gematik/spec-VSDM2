Instance: VSDMCoverage-I901234562
InstanceOf: VSDMCoverage
Title: "I901234562 Ibis, Ingrid"
Description: "Versicherungsdaten I901234562 Ibis, Ingrid"
Usage: #example

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[WOP].valueCoding = $csWOP#98 "Sachsen"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod
    * start = "2021-02-07"
    * end = "2028-02-15"
  * extension[digitalesDMP].valueBoolean = false
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenart#5 "Rentner und ihre Familienangehörigen"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-I901234562"
* period
  * start = "1942-02-28"
  * end = "2028-02-15"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107933230"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
