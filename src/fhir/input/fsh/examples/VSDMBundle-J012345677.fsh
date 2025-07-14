Instance: VSDMBundle-J012345677
InstanceOf: VSDMBundle
Title: "J012345677 Junko, Jens-Jörg"
Description: "VSDM 2.0-Daten J012345677 Junko, Jens-Jörg"
Usage: #example

* identifier.value = "urn:uuid:a3acb244-31cc-462a-9fae-03eca9c52e93"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/339221d1-85b4-45b4-9ded-503fe1aab14d"
* entry[DocumentInformation][=].resource = VSDMComposition-J012345677
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-J012345677"
* entry[VSDMPatient][=].resource = VSDMPatient-J012345677
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-J012345677"
* entry[VSDMCoverage][=].resource = VSDMCoverage-J012345677
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization106877150"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-106877150

Instance: VSDMComposition-J012345677
InstanceOf: VSDMComposition
Title: "J012345677 Junko, Jens-Jörg"
Description: "Composition für VSDM 2.0-Daten J012345677 Junko, Jens-Jörg"
Usage: #inline

* id = "339221d1-85b4-45b4-9ded-503fe1aab14d"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten J012345677 Junko, Jens-Jörg"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "106877150"
* section[+].entry.reference = "Patient/VSDMPatient-J012345677"
* section[+].entry.reference = "Coverage/VSDMCoverage-J012345677"
* section[+].entry.reference = "Organization/VSDMPayorOrganization106877150"
