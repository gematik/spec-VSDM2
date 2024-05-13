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
* type ^short = "Versicherungsart"
* type ^definition = "Art der Versicherung: Selbstzahler, gesetzliche/private Versicherung, Berufsgenossenschaft oder Sozialamt"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    VSDMFestzuschusshoeheEX named vsdmFestzuschusshoeheEX 0..1 and
    $versichertenart named versichertenart 0..1 and
    $kostenerstattung named kostenerstattung 0..1 and
    $wop named wop 0..1 and
    $besondere-personengruppe named besonderePersonengruppe 0..1 and
    $dmp-kennzeichen named dmpKennzeichen 0..1 and
    $ruhender-leistungsanspruch named ruhenderLeistungsanspruch 0..1 and
    $zuzahlungsstatus named zuzahlungsstatus 0..1
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
* payor.identifier only $identifier-iknr
* payor.identifier 1..1
* payor.display 1..1

Instance: VSDMCoverageSample
InstanceOf: VSDMCoverage
Title:   "Coverage for VSDM 2 Query"
Usage: #example
* id = "2d4da53a-413a-48fe-b908-2e67b5761523"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage"
* status = #active
* extension[vsdmFestzuschusshoeheEX].url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMFestzuschusshoeheEX"
* extension[vsdmFestzuschusshoeheEX].valueCoding = https://gematik.de/fhir/vsdm2/CodeSystem/VSDMFestzuschusshoeheCS#1 "70 % / fünf Jahre durchgehend"
* type.coding.system = "http://fhir.de/CodeSystem/versicherungsart-de-basis"
* type.coding.code = #GKV
* type.coding.display = "gesetzliche Krankenversicherung"
* period.start = "2022-04-01"
* period.end = "2027-07-31"
* beneficiary.reference =  "Patient/437f2555-2396-4c64-a656-e9553161ca3c"
* payor.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* payor.identifier.value = "12345678"
* payor.display = "Test GKV Krankenkasse"