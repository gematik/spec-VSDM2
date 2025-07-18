Instance: VSDMBundle-I901234562
InstanceOf: VSDMBundle
Title: "I901234562 Ibis, Ingrid"
Description: "VSDM 2.0-Daten I901234562 Ibis, Ingrid"
Usage: #example

* identifier.value = "urn:uuid:e0f90f2d-2361-46c6-b201-58dc06bf3bf4"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/685ac434-11ec-40d7-b372-934205397f7f"
* entry[DocumentInformation][=].resource = VSDMComposition-I901234562
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-I901234562"
* entry[VSDMPatient][=].resource = VSDMPatient-I901234562
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-I901234562"
* entry[VSDMCoverage][=].resource = VSDMCoverage-I901234562
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-107933230"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-107933230

Instance: VSDMComposition-I901234562
InstanceOf: VSDMComposition
Title: "I901234562 Ibis, Ingrid"
Description: "Composition für VSDM 2.0-Daten I901234562 Ibis, Ingrid"
Usage: #inline

* id = "685ac434-11ec-40d7-b372-934205397f7f"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten I901234562 Ibis, Ingrid"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "107933230"
* section[+].entry.reference = "Patient/VSDMPatient-I901234562"
* section[+].entry.reference = "Coverage/VSDMCoverage-I901234562"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-107933230"
