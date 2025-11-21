Instance: VSDMCoverageGKV-K123456781
InstanceOf: VSDMCoverageGKV
Title: "K123456781 Kiebitz, Karin (GKV)"
Description: "Versicherungsdaten K123456781 Kiebitz, Karin (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-K123456781
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#46 "Hessen"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = false
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#2 "eingeschränkt"
  * extension[dauer].valuePeriod.start = "2024-06-15"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#5 "Rentner"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-K123456781
* period
  * start = "2022-04-01"
  * end = "2027-07-31"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-105532787"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-106339922"
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
