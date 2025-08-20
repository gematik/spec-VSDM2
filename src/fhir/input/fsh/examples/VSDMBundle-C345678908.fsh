Instance: VSDMBundle-C345678908
InstanceOf: VSDMBundle
Title: "C345678908 Carolinataube, Charlie"
Description: "VSDM 2.0-Daten C345678908 Carolinataube, Charlie"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:c9218485-6991-4f10-b6f9-4352476b2bcb"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/d905365b-3e7d-432d-a4e3-ca52d7275bab"
* entry[DocumentInformation][=].resource = VSDMComposition-C345678908
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-C345678908"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-C345678908
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-C345678908"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-C345678908
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-107723372"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-107723372

Instance: VSDMComposition-C345678908
InstanceOf: VSDMComposition
Title: "C345678908 Carolinataube, Charlie"
Description: "Composition für VSDM 2.0-Daten C345678908 Carolinataube, Charlie"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "d905365b-3e7d-432d-a4e3-ca52d7275bab"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten C345678908 Carolinataube, Charlie"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "107723372"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-C345678908"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-C345678908"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-107723372"

