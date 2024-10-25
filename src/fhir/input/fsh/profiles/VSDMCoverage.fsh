Profile: VSDMCoverage
Parent: coverage-de-basis
Id: vsdm-coverage
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage"
* insert Meta
* meta 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage" (exactly)
* status = #active (exactly)
* type 1..1
* type from $versicherungsart-de-basis (required)
  * ^short = "Versicherungsart"
  * ^definition = "Art der Versicherung: Selbstzahler, gesetzliche/private Versicherung, Berufsgenossenschaft oder Sozialamt"

* extension contains
    $versichertenart named versichertenart 0..1 and
    $wop named wop 0..1 and
    $besondere-personengruppe named besonderePersonengruppe 0..1 and
    VSDMKostenerstattungEX named vsdm-kostenerstattung 0..1 and
    VSDMRuhenderLeistungsanspruchEX named vsdm-ruhenderLeistungsanspruch 0..1 and
    VSDMZuzahlungsstatusEX named vsdm-zuzahlungsstatus 1..1 and
    VSDMDMPKennzeichenEX named vsdm-dmpKennzeichen 0..* and 
    VSDMWahltarifeEX named vsdm-wahltarife 0..*

* extension[vsdm-kostenerstattung].extension[kostentraeger-angabestatus].value[x] only boolean
* extension[vsdm-dmpKennzeichen].extension[kostentraeger-angabestatus].value[x] only boolean
* extension[vsdm-ruhenderLeistungsanspruch].extension[kostentraeger-angabestatus].value[x] only boolean
* extension[vsdm-zuzahlungsstatus].extension[kostentraeger-angabestatus].value[x] only boolean
* extension[vsdm-wahltarife].extension[kostentraeger-angabestatus].value[x] only boolean

* beneficiary only Reference(VSDMPatient)
* beneficiary 1..1
* beneficiary.reference 1..1
* period 1..1
* period.start 1..1
* period.end 1..1
* payor 1..1
* payor.extension ^slicing.discriminator.type = #value
* payor.extension ^slicing.discriminator.path = "url"
* payor.extension ^slicing.rules = #open
* payor.extension contains $AbrechnendeIK named abrechnendeIK 0..1
* payor.identifier only $identifier-iknr
* payor.identifier 1..1
* payor.display 1..1


/*
Instance: VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "2d4da53a-413a-48fe-b908-2e67b5761523"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage"
* status = #active
* type.coding.system = "http://fhir.de/CodeSystem/versicherungsart-de-basis"
* type.coding.code = #GKV
* type.coding.display = "gesetzliche Krankenversicherung"
* period.start = "2022-04-01"
* period.end = "2027-07-31"
* beneficiary.reference =  "Patient/437f2555-2396-4c64-a656-e9553161ca3c"
* payor.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* payor.identifier.value = "12345678"
* payor.display = "Test GKV Krankenkasse"

*/
/*
* extension[vsdmFestzuschusshoeheEX].url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMFestzuschusshoeheEX"
* extension[vsdmFestzuschusshoeheEX].valueCoding = https://gematik.de/fhir/vsdm2/CodeSystem/VSDMFestzuschusshoeheCS#1 "70 % / fünf Jahre durchgehend"

* extension[vsdmbesonderepersonengruppe].valueCoding = VSDMBesonderePersonengruppeCS#3


* extension[vsdmdmpkennzeichen].extension[angabe].valueBoolean = true
* extension[vsdmdmpkennzeichen].extension[teilnahme].valueBoolean = true
* extension[vsdmdmpkennzeichen].extension[kennzeichen].valueCoding = VSDMDMPKennzeichenCS#1
* extension[vsdmdmpkennzeichen].extension[beginn].valueDate = "2024-05-05"
* extension[vsdmdmpkennzeichen].extension[ende].valueDate = "2024-07-05"

* extension[vsdmgkvwohnortprinzip].valueCoding = VSDMGKVWohnortprinzipCS#1

* extension[vsdmversichertenart].valueCoding = VSDMVersichertenartCS#2

* extension[vsdmkostenerstattung].extension[aerztlicheVersorgung].valueBoolean = true
* extension[vsdmkostenerstattung].extension[zahnaerztlicheVersorgung].valueBoolean = false
* extension[vsdmkostenerstattung].extension[stationaererBereich].valueBoolean = false
* extension[vsdmkostenerstattung].extension[veranlassteLeistungen].valueBoolean = false

* extension[vsdmselektivvertraege].extension[aerztlich].valueBoolean = true
* extension[vsdmselektivvertraege].extension[zahnaerztlich].valueBoolean = false

* extension[vsdmruhenderleistungsanspruch].extension[art].valueBoolean = true
* extension[vsdmruhenderleistungsanspruch].extension[dauer].valueDate = "2024-01-15"
* extension[vsdmruhenderleistungsanspruch].extension[dauer].url = "Ende"
* extension[vsdmruhenderleistungsanspruch].extension[dauer].valueDate = "2024-04-15"

* extension[vsdmzuzahlungsstatus].extension[status].valueBoolean = true
* extension[vsdmzuzahlungsstatus].extension[gueltigBis].valueDate = "2025-12-31"

*/

