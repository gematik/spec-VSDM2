Instance: VSDMCoverageGKV-G789012344
InstanceOf: VSDMCoverageGKV
Title: "G789012344 Edle von der Graugans, Gabriele (GKV)"
Description: "Versicherungsdaten G789012344 Edle von der Graugans, Gabriele (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#46 "Hessen"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2026-12-31"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#2 "eingeschränkt"
  * extension[dauer].valuePeriod
    * start = "2025-06-01"
    * end = "2027-12-31"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#1 "Mitglieder"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/VSDMPatient-GKV-G789012344"
* period
  * start = "1974-02-12"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-105413578"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit

