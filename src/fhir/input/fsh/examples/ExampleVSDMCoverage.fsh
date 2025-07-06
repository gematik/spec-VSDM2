// TODO mehr / praxisnähere Beispiele aufbauen

Instance: VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "2d4da53a-413a-48fe-b908-2e67b5761523"
* insert ExampleCoverage



Instance: VALID-VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "VALID-413a-48fe-b908-2e67b5761523"
* insert ExampleCoverage


RuleSet: ExampleCoverage

* extension[WOP].valueCoding = $KBV_CS_SFHIR_ITA_WOP#17 "Niedersachsen"

* extension[besonderePersonengruppe].valueCoding = $KBV_CS_SFHIR_KBV_PERSONENGRUPPE#06 "SER (Soziales Entschädigungsrecht)"

* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = 2026-12-31

* extension[dmp][+]
  * extension[dmp].valueCoding = $KBV_CS_SFHIR_KBV_DMP#01 "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod.start = "2022-05-05"
  * extension[digitalesDMP].valueBoolean = true

* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false

// TODO Pflichtfelder aus deutschem Basisprofil - noch kommentieren / beschreiben?
* status = #active
* type = #GKV

* payor[+]
  * reference = "Organization/2a6924bf-6e6a-4ef3-b79f-c2138c10712f"
  * display = "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/d1f7b106-7f99-40d6-9f21-50b051301127"
  * display = "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit

// ---

* period.start = "2022-04-01"
* period.end = "2027-07-31"
* beneficiary.reference =  "Patient/437f2555-2396-4c64-a656-e9553161ca3c"

* extension[versichertenart].valueCoding = $KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS#1

* extension[ruhenderLeistungsanspruch].extension[art].valueCoding.code = #1
* extension[ruhenderLeistungsanspruch].extension[dauer].valuePeriod.start = "2022-05-05"


