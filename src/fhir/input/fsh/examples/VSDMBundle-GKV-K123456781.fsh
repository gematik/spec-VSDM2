Instance: VSDMBundle-GKV-K123456781
InstanceOf: VSDMBundle
Title: "K123456781 Kiebitz, Karin (GKV)"
Description: "VSDM 2.0-Daten K123456781 Kiebitz, Karin (GKV)"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:40e95420-b46e-4e5e-937c-5b707af9ac49"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/5c6c5fef-9cf1-4149-901e-e24df8a19eba"
* entry[DocumentInformation][=].resource = VSDMComposition-K123456781
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-K123456781"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-K123456781
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-K123456781"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-K123456781
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-105532787"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-105532787
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-106339922"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-106339922

Instance: VSDMComposition-K123456781
InstanceOf: VSDMComposition
Title: "K123456781 Kiebitz, Karin"
Description: "Composition für VSDM 2.0-Daten K123456781 Kiebitz, Karin"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "5c6c5fef-9cf1-4149-901e-e24df8a19eba"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten K123456781 Kiebitz, Karin"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "105532787"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-K123456781"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-K123456781"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-105532787"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-106339922"

