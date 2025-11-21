Instance: VSDMCoverageGKV-D456789013
InstanceOf: VSDMCoverageGKV
Title: "D456789013 Dohle, Dara (GKV)"
Description: "Versicherungsdaten D456789013 Dohle, Dara (GKV)"
Usage: #inline

* id = "019aa696-4962-7577-9a24-9be92b1dde93"
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#46 "Hessen"
* extension[besonderePersonengruppe].valueCoding = #06 "SER" // "SER (Soziales Entschädigungsrecht)"
* extension[dmp][+]
  * extension[dmp].valueCoding = #05 "Asthma" // "Asthma bronchiale"
  * extension[zeitraum].valuePeriod.start = "2022-01-01"
  * extension[digitalesDMP].valueBoolean = false
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-D456789013"
* period
  * start = "2021-10-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-105266989"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
