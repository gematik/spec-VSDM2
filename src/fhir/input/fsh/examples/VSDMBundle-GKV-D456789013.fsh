Instance: VSDMBundle-GKV-D456789013
InstanceOf: VSDMBundle
Title: "D456789013 Dohle, Dara (GKV)"
Description: "VSDM 2.0-Daten D456789013 Dohle, Dara (GKV)"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:46c3dab3-919d-4d29-891d-a11859a20b91"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/48194abf-838b-4862-b4af-927ebaca1f14"
* entry[DocumentInformation][=].resource = VSDMComposition-D456789013
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-D456789013"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-D456789013
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-D456789013"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-D456789013
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-105266989"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-105266989

Instance: VSDMComposition-D456789013
InstanceOf: VSDMComposition
Title: "D456789013 Dohle, Dara"
Description: "Composition für VSDM 2.0-Daten D456789013 Dohle, Dara"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "48194abf-838b-4862-b4af-927ebaca1f14"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten D456789013 Dohle, Dara"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "105266989"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-D456789013"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-D456789013"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-105266989"
