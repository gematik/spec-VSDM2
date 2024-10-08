Profile: VSDMComposition
Parent: Composition
Id: vsdm-composition
Title: "VSDM 2 Composition for VSDM 2 Bundle"
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMComposition"
* ^version = "1.2"
* ^status = #active
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMComposition" (exactly)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* status = #final (exactly)
* status MS
* type MS
* type.coding 1..1
//* type.coding from ??? (required)
//* type.coding.code = #42 (exactly)
* date MS
* author.identifier 1..1
* author.identifier only $identifier-iknr


Instance: VSDM2CompositionSample
InstanceOf: VSDMComposition
Title:   "Composition for Receipt Bundle 'Quittung'"
Usage: #inline
* id = "c624cf47-e235-4624-af71-0a09dc9254dc"
* meta.profile[+] = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMComposition"
* status = #final
* type.coding = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable
* date = "2023-11-03T12:02:23.157+01:00"
* title = "VSDM 2 data"
* author.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* author.identifier.value = "12345678"
* section[+].entry.reference = "Patient/437f2555-2396-4c64-a656-e9553161ca3c"
* section[+].entry.reference = "Coverage/2d4da53a-413a-48fe-b908-2e67b5761523"