Instance: VSDMBundle-GKV-M345678909
InstanceOf: VSDMBundle
Title: "M345678909 Mittelspecht, Michael-Martin (GKV)"
Description: "VSDM 2.0-Daten M345678909 Mittelspecht, Michael-Martin (GKV)"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:f04453e8-99b2-4745-b92e-8d1277a0268d"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/3cc87a24-5e9f-4b2e-a5c8-99e48bedfb38"
* entry[DocumentInformation][=].resource = VSDMComposition-M345678909
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-M345678909"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-M345678909
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-M345678909"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-M345678909
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-108416806"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-108416806

Instance: VSDMComposition-M345678909
InstanceOf: VSDMComposition
Title: "M345678909 Mittelspecht, Michael-Martin"
Description: "Composition für VSDM 2.0-Daten M345678909 Mittelspecht, Michael-Martin"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "3cc87a24-5e9f-4b2e-a5c8-99e48bedfb38"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten M345678909 Mittelspecht, Michael-Martin"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "108416806"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-M345678909"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-M345678909"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-108416806"
