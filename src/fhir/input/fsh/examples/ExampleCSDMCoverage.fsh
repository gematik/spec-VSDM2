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

Instance: INVALID-VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Invalide Coverage für Wahltarif"
Usage: #example
* id = "INVALID-322b-4bbd-9c8b-6b0340075a0d"
* insert ExampleCoverage
* extension[vsdm-wahltarife].extension[wahltarif].valueCoding = VSDMWahltarifeCS#1


RuleSet: ExampleCoverage
* type.coding.code = #GKV
* period.start = "2022-04-01"
* period.end = "2027-07-31"
* beneficiary.reference =  "Patient/437f2555-2396-4c64-a656-e9553161ca3c"
* payor.identifier.value = "12345678"
* payor.display = "Test GKV Krankenkasse"

* extension[versichertenart].valueCoding = $KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS#1
* extension[wop].valueCoding = $KBV_CS_SFHIR_ITA_WOP#72
* extension[besonderePersonengruppe].valueCoding = $KBV_CS_SFHIR_KBV_PERSONENGRUPPE#06

* extension[vsdm-kostenerstattung].extension[gkv-kostenerstattung].extension[aerztlicheVersorgung].valueBoolean = true
* extension[vsdm-kostenerstattung].extension[kostentraeger-angabestatus].valueBoolean = true

* extension[vsdm-ruhenderLeistungsanspruch].extension[ruhenderLeistungsanspruch].extension[art].valueCoding.code = #1
* extension[vsdm-ruhenderLeistungsanspruch].extension[kostentraeger-angabestatus].valueBoolean = true

* extension[vsdm-zuzahlungsstatus].extension[zuzahlungsstatus].extension[status].valueBoolean = true
* extension[vsdm-zuzahlungsstatus].extension[kostentraeger-angabestatus].valueBoolean = true

* extension[vsdm-dmpKennzeichen].extension[dmpKennzeichen].valueCoding = $KBV_CS_SFHIR_KBV_DMP#01
* extension[vsdm-dmpKennzeichen].extension[dmp-zeitraum].valuePeriod.start = "2022-05-05"
* extension[vsdm-dmpKennzeichen].extension[digitales-dmp].valueBoolean = true
* extension[vsdm-dmpKennzeichen].extension[kostentraeger-angabestatus].valueBoolean = true

* extension[vsdm-wahltarife].extension[wahltarif-zeitraum].valuePeriod.start = "2022-05-05"
* extension[vsdm-wahltarife].extension[kostentraeger-angabestatus].valueBoolean = true

