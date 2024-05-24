Profile: VSDMBundle
Parent: Bundle
Id: vsdm-bundle
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMBundle"
* insert Meta
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMBundle" (exactly)
* id 1..1
* identifier 1..
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value 1..
* identifier.value ^short = "a unique bundle identifier"
* type = #document (exactly)
* timestamp 1..
* entry 1..
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 3..3
* entry contains
    DocumentInformation 1..1 and
    VSDMPatient 1..1 and
    VSDMCoverage 1..1
* entry[DocumentInformation].resource 1..
* entry[DocumentInformation].resource only VSDMComposition
* entry[VSDMPatient].resource 1..
* entry[VSDMPatient].resource only VSDMPatient
* entry[VSDMCoverage].resource 1..
* entry[VSDMCoverage].resource only VSDMCoverage

* signature 1..
* signature.sigFormat = #application/pkcs7-mime (exactly)
* signature.when 1..
* signature.who 1..
* signature.who.identifier 1..1
* signature.who.identifier only  $identifier-iknr
* signature.data 1..


// Beispielgenerierung
Instance: Vsdm2BundleSample
InstanceOf: VSDMBundle
Title: "GKV VSDM 2 Bundle"
Usage: #example
* id = "9b6ac30d-246d-4eab-af83-544564792089"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMBundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9b6ac30d-246d-4eab-af83-544564792089"
* type = #document
* timestamp = "2023-11-03T12:02:23.157+01:00"
* entry[+][DocumentInformation].fullUrl = "https://gematik.de/fhir/Composition/c624cf47-e235-4624-af71-0a09dc9254dc"
* entry[=][DocumentInformation].resource = VSDM2CompositionSample
* entry[+][VSDMPatient].fullUrl = "https://gematik.de/fhir/Patient/437f2555-2396-4c64-a656-e9553161ca3c"
* entry[=][VSDMPatient].resource = VSDMPatientSample
* entry[+][VSDMCoverage].fullUrl = "https://gematik.de/fhir/Coverage/2d4da53a-413a-48fe-b908-2e67b5761523"
* entry[=][VSDMCoverage].resource = VSDMCoverageSample
* signature.type.system = "urn:iso-astm:E1762-95:2013"
* signature.type.code = #1.2.840.10065.1.12.1.7
* signature.type.display = "Consent Signature"
* signature.when = "2023-11-03T12:02:23.157+01:00"
* signature.who.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* signature.who.identifier.value = "12345678"
* signature.sigFormat = #application/pkcs7-mime
* signature.data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="