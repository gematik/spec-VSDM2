Profile: VSDMComposition
Parent: Composition
Id: vsdm-composition
Title: "VSDM 2 Composition for VSDM 2 Bundle"
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMComposition"
* insert Meta
* meta 1..1
  * profile 1..1
  * profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMComposition" (exactly)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* status = #final (exactly)
* status MS
* type MS
* type.coding 1..1
* type.coding = $csLOINC#55188-7 "Patient data Document"
* date MS
* author.identifier 1..1
* author.identifier only IdentifierIknr