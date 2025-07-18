Instance: VSDMCoverage-N456789014
InstanceOf: VSDMCoverage
Title: "N456789014 Nachtigall, Nina Nicole"
Description: "Versicherungsdaten N456789014 Nachtigall, Nina Nicole"
Usage: #example

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2029-06-22"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienversicherter"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-N456789014"
* period
  * start = "2011-06-22"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-108028771"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-109083613"
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
