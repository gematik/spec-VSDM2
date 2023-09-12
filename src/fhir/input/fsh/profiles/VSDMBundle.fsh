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
* entry 2..2
* entry contains
    VSDMPatient 1..1 and
    VSDMCoverage 1..1
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
