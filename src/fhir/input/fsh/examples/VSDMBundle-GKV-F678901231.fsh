Instance: VSDMBundle-GKV-F678901231
InstanceOf: VSDMBundle
Title: "F678901231 von Fasan, Frank Florian"
Description: "VSDM 2.0-Daten F678901231 von Fasan, Frank Florian"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:789fabd9-5c45-42c9-8707-0b36a2d3b6c9"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/101ea78a-2538-4c1e-958c-73cc8054656d"
* entry[DocumentInformation][=].resource = VSDMComposition-F678901231
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-F678901231"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-F678901231
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-F678901231"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-F678901231
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-107403308"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-107403308

Instance: VSDMComposition-F678901231
InstanceOf: VSDMComposition
Title: "F678901231 von Fasan, Frank Florian"
Description: "Composition für VSDM 2.0-Daten F678901231 von Fasan, Frank Florian"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "101ea78a-2538-4c1e-958c-73cc8054656d"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten F678901231 von Fasan, Frank Florian"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "107403308"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-F678901231"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-F678901231"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-107403308"
