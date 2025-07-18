Instance: VSDMBundle-B234567895
InstanceOf: VSDMBundle
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Description: "VSDM 2.0-Daten B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Usage: #example

* identifier.value = "urn:uuid:6dc3a6f8-6fec-40a5-9432-e9c339db0f5c"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/18e78aa7-1e3e-4cc0-9cbb-2872ab316a30"
* entry[DocumentInformation][=].resource = VSDMComposition-B234567895
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-B234567895"
* entry[VSDMPatient][=].resource = VSDMPatient-B234567895
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-B234567895"
* entry[VSDMCoverage][=].resource = VSDMCoverage-B234567895
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-103169760"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-103169760
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-103215857"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-103215857

Instance: VSDMComposition-B234567895
InstanceOf: VSDMComposition
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Description: "Composition für VSDM 2.0-Daten B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Usage: #inline

* id = "18e78aa7-1e3e-4cc0-9cbb-2872ab316a30"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "103169760"
* section[+].entry.reference = "Patient/VSDMPatient-B234567895"
* section[+].entry.reference = "Coverage/VSDMCoverage-B234567895"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-103169760"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-103215857"

