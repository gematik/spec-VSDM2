Instance: VSDMCoverage-GKV-E567890127
InstanceOf: VSDMCoverage
Title: "E567890127 Freifrau an der Elster, Elke"
Description: "Versicherungsdaten E567890127 Freifrau an der Elster, Elke"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[WOP].valueCoding = $csWOP#93 "Thüringen"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2026-06-30"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "DM2" // "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod.start = "2001-01-01"
  * extension[digitalesDMP].valueBoolean = false
* extension[dmp][+]
  * extension[dmp].valueCoding = #09 "Rueckenschmerz"
  * extension[zeitraum].valuePeriod
    * start = "2020-01-01"
    * end = "2023-12-31"
  * extension[digitalesDMP].valueBoolean = true
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false
* extension[versichertenart].valueCoding = $csVersichertenart#1 "Mitglieder"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-E567890127"
* period
  * start = "1992-11-13"
  * end = "2026-12-31"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-105929412"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-104547224"
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
