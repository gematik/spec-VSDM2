// TODO mehr / praxisnähere Beispiele aufbauen

Instance: VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "2d4da53a-413a-48fe-b908-2e67b5761523"
* insert ExampleCoverage
* beneficiary.reference = "Patient/437f2555-2396-4c64-a656-e9553161ca3c"



Instance: VALID-VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "VALID-413a-48fe-b908-2e67b5761523"
* insert ExampleCoverage
* beneficiary.reference = "Patient/437f2555-2396-4c64-a656-e9553161ca3c"


RuleSet: ExampleCoverage

* extension[WOP].valueCoding = #17 "Niedersachsen" 

* extension[besonderePersonengruppe].valueCoding = #06 "SER (Soziales Entschädigungsrecht)"

* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = 2026-12-31

* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod.start = "2022-05-05"
  * extension[digitalesDMP].valueBoolean = true

* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false

* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = #1
  * extension[dauer].valuePeriod.start = "2022-05-05"

* extension[versichertenart].valueCoding = $csVersichertenart#1 "Mitglied"

// TODO Pflichtfelder aus deutschem Basisprofil - noch kommentieren / beschreiben?
* status = #active
* type = #GKV

* period.start = "2022-04-01"
* period.end = "2027-07-31"

* payor[+]
  * reference = "Organization/2a6924bf-6e6a-4ef3-b79f-c2138c10712f"
  * display = "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/d1f7b106-7f99-40d6-9f21-50b051301127"
  * display = "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit



