Profile: VSDMBundle
Parent: Bundle
Id: vsdm-bundle
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMBundle"
* insert Meta
* id 1..1
* meta 1..1
  * profile 1..1
  * profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMBundle" (exactly)
* identifier 1..1
  * system 1..1
  * system = "urn:ietf:rfc:3986" (exactly)
  * value 1..1
  * value ^short = "a unique bundle identifier"
  //TODO: * value ^example.valueString = "6c1b0aee-42d4-4684-871e-98258f189a71"
* type = #document (exactly)
* timestamp 1..1
* entry
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
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

* signature 0..1
* signature.sigFormat = #application/pkcs7-mime (exactly)
* signature.when 1..1
* signature.who 1..1
* signature.who.identifier 1..1
* signature.who.identifier only IdentifierIknr
* signature.data 1..1
