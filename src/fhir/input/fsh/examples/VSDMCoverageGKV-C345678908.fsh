Instance: VSDMCoverageGKV-C345678908
InstanceOf: VSDMCoverageGKV
Title: "C345678908 Carolinataube, Charlie (GKV)"
Description: "Versicherungsdaten C345678908 Carolinataube, Charlie (GKV)"
Usage: #inline

* id = "019aa696-5a70-7a68-ad1c-83b7369f7049"
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#98 "Sachsen"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "DM2" // "Diabetes mellitus Typ 2"
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
* extension[versichertenart].valueCoding = $csVersichertenartGKV#1 "Mitglieder"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-C345678908"
* period
  * start = "1979-06-11"
  * end = "2027-01-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-107723372"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
