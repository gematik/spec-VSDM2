
Instance: VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "2d4da53a-413a-48fe-b908-2e67b5761523"
* insert ExampleCoverage
* extension[vsdm-wahltarife].extension[wahltarif].valueCoding = VSDMWahltarifeCS#1
* extension[vsdm-wahltarife].extension[wahltarif-vertragskennzeichen].valueString = "Test Kommentar"



Instance: VALID-VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "VALID-413a-48fe-b908-2e67b5761523"
* insert ExampleCoverage
* extension[vsdm-wahltarife].extension[wahltarif].valueCoding = VSDMWahltarifeCS#2


RuleSet: ExampleCoverage
* type.coding = $versichertenart-de-basis-cs#GKV
* period.start = "2022-04-01"
* period.end = "2027-07-31"
* beneficiary.reference =  "Patient/437f2555-2396-4c64-a656-e9553161ca3c"

* payor[+]
  * reference = "Organization/2a6924bf-6e6a-4ef3-b79f-c2138c10712f"
  * display = "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* payor[+]
  * reference = "Organization/d1f7b106-7f99-40d6-9f21-50b051301127"
  * display = "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit

* extension[vsdm-kostentraegerAngabestatus].valueCodeableConcept.coding[+] = VSDMKostentraegerAngabestatusCS#dmp
* extension[vsdm-kostentraegerAngabestatus].valueCodeableConcept.coding[+] = VSDMKostentraegerAngabestatusCS#wahltarife

* extension[versichertenart].valueCoding = $KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS#1
* extension[wop].valueCoding = $KBV_CS_SFHIR_ITA_WOP#72
* extension[besonderePersonengruppe].valueCoding = $KBV_CS_SFHIR_KBV_PERSONENGRUPPE#06

* extension[kostenerstattung].extension[aerztlicheVersorgung].valueBoolean = true

* extension[ruhenderLeistungsanspruch].extension[art].valueCoding.code = #1
* extension[ruhenderLeistungsanspruch].extension[dauer].valuePeriod.start = "2022-05-05"

* extension[zuzahlungsstatus].extension[status].valueBoolean = true

* extension[vsdm-dmpKennzeichen].extension[dmpKennzeichen].valueCoding = $KBV_CS_SFHIR_KBV_DMP#01
* extension[vsdm-dmpKennzeichen].extension[dmp-zeitraum].valuePeriod.start = "2022-05-05"
* extension[vsdm-dmpKennzeichen].extension[digitales-dmp].valueBoolean = true

* extension[vsdm-wahltarife].extension[wahltarif-zeitraum].valuePeriod.start = "2022-05-05"
* extension[vsdm-kostentraegerlaendercode].valueCoding = $cs-iso3166-1-2#DE

