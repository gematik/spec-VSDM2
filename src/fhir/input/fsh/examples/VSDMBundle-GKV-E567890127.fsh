Instance: VSDMBundle-GKV-E567890127
InstanceOf: VSDMBundle
Title: "E567890127 Freifrau an der Elster, Elke"
Description: "VSDM 2.0-Daten E567890127 Freifrau an der Elster, Elke"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:68ac7379-6f6f-4d9c-9288-67800ea12e98"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/c987daa7-00f7-40e6-81a9-04a71cf39c8c"
* entry[DocumentInformation][=].resource = VSDMComposition-E567890127
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-E567890127"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-E567890127
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-E567890127"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-E567890127
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-105929412"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-105929412
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-104547224"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-104547224

Instance: VSDMComposition-E567890127
InstanceOf: VSDMComposition
Title: "E567890127 Freifrau an der Elster, Elke"
Description: "Composition für VSDM 2.0-Daten E567890127 Freifrau an der Elster, Elke"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "c987daa7-00f7-40e6-81a9-04a71cf39c8c"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten E567890127 Freifrau an der Elster, Elke"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "105929412"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-E567890127"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-E567890127"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-105929412"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-104547224"

