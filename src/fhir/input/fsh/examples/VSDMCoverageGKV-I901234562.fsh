Instance: VSDMCoverageGKV-I901234562
InstanceOf: VSDMCoverageGKV
Title: "I901234562 Ibis, Ingrid (GKV)"
Description: "Versicherungsdaten I901234562 Ibis, Ingrid (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#98 "Sachsen"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "DM2" // "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod
    * start = "2021-02-07"
    * end = "2028-02-15"
  * extension[digitalesDMP].valueBoolean = false
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#5 "Rentner"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-I901234562"
* period
  * start = "1942-02-28"
  * end = "2028-02-15"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107933230"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
