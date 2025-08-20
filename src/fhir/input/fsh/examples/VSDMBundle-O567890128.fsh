Instance: VSDMBundle-O567890128
InstanceOf: VSDMBundle
Title: "O567890128 Ortolan, Oliver"
Description: "VSDM 2.0-Daten O567890128 Ortolan, Oliver"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:a6def0d3-cc4a-4cfa-ae8e-271b592b7dac"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/da3ea255-1ae0-4fde-ad72-6f7052d3698d"
* entry[DocumentInformation][=].resource = VSDMComposition-O567890128
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-O567890128"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-O567890128
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-O567890128"
* entry[VSDMCoverage][=].resource = VSDMCoverage-O567890128
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-107668422"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-107668422

Instance: VSDMComposition-O567890128
InstanceOf: VSDMComposition
Title: "O567890128 Ortolan, Oliver"
Description: "Composition für VSDM 2.0-Daten O567890128 Ortolan, Oliver"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "da3ea255-1ae0-4fde-ad72-6f7052d3698d"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten O567890128 Ortolan, Oliver"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "107668422"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-O567890128"
* section[+].entry.reference = "Coverage/VSDMCoverage-O567890128"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-107668422"
