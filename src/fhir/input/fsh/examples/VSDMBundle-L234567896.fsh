Instance: VSDMBundle-L234567896
InstanceOf: VSDMBundle
Title: "L234567896 Lachmöwe, Lisa"
Description: "VSDM 2.0-Daten L234567896 Lachmöwe, Lisa"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:51f2f2ce-908c-4706-af44-0ee5e18cfc33"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/b04bf9f2-b167-40ad-86e2-44334b23080d"
* entry[DocumentInformation][=].resource = VSDMComposition-L234567896
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-L234567896"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-L234567896
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-L234567896"
* entry[VSDMCoverage][=].resource = VSDMCoverage-L234567896
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-102343996"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-102343996

Instance: VSDMComposition-L234567896
InstanceOf: VSDMComposition
Title: "L234567896 Lachmöwe, Lisa"
Description: "Composition für VSDM 2.0-Daten L234567896 Lachmöwe, Lisa"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "b04bf9f2-b167-40ad-86e2-44334b23080d"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten L234567896 Lachmöwe, Lisa"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "102343996"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-L234567896"
* section[+].entry.reference = "Coverage/VSDMCoverage-L234567896"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-102343996"
