Instance: VSDMBundle-H890123459
InstanceOf: VSDMBundle
Title: "H890123459 vorm Habicht, Hans"
Description: "VSDM 2.0-Daten H890123459 vorm Habicht, Hans"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:15a9288a-19d3-47fe-9c54-9a33af6f1491"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/224d3914-d9ff-42f1-b790-c208329251d2"
* entry[DocumentInformation][=].resource = VSDMComposition-H890123459
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-H890123459"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-H890123459
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-H890123459"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-H890123459
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-102249844"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-102249844
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-102186348"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-102186348

Instance: VSDMComposition-H890123459
InstanceOf: VSDMComposition
Title: "H890123459 vorm Habicht, Hans"
Description: "Composition für VSDM 2.0-Daten H890123459 vorm Habicht, Hans"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "224d3914-d9ff-42f1-b790-c208329251d2"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten H890123459 vorm Habicht, Hans"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "102249844"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-H890123459"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-H890123459"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-102249844"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-102186348"

