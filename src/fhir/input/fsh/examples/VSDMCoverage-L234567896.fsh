Instance: VSDMCoverage-L234567896
InstanceOf: VSDMCoverage
Title: "L234567896 Lachmöwe, Lisa"
Description: "Versicherungsdaten L234567896 Lachmöwe, Lisa"
Usage: #example

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[WOP].valueCoding = $csWOP#17 "Niedersachsen" 
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2040-07-02"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenart#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = "Patient/437f2555-2396-4c64-a656-e9553161ca3c"
* period
  * start = "2022-07-02"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-102343996"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
