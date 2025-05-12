Profile: VSDMKostentraeger
Parent: Organization
Id: vsdm-kostentraeger
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraeger"
* insert Meta
* identifier 1..1
* identifier only IdentifierIknr
* active = true (exactly)
* type from VSDMKostentraegerTypVS (required)
* type
  * coding.system = $organizationtype
* name 1..1 // to be discussed
