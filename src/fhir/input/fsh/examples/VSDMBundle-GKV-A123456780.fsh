Instance: VSDMBundle-GKV-A123456780
InstanceOf: VSDMBundle
Title: "A123456780 Amsel, Andrea"
Description: "VSDM 2.0-Daten A123456780 Amsel, Andrea"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:4aec5cba-62eb-42e6-b7d4-f60077c19122"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/0fc3cb38-b4c4-4833-add9-c42182cece37"
* entry[DocumentInformation][=].resource = VSDMComposition-A123456780
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-A123456780"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-A123456780
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-A123456780"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-A123456780
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-104178397"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-104178397

Instance: VSDMComposition-A123456780
InstanceOf: VSDMComposition
Title: "A123456780 Amsel, Andrea"
Description: "Composition für VSDM 2.0-Daten A123456780 Amsel, Andrea"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "0fc3cb38-b4c4-4833-add9-c42182cece37"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten A123456780 Amsel, Andrea"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "104178397"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-A123456780"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-A123456780"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-104178397"

