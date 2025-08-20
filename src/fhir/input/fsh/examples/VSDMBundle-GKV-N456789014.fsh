Instance: VSDMBundle-GKV-N456789014
InstanceOf: VSDMBundle
Title: "N456789014 Nachtigall, Nina Nicole"
Description: "VSDM 2.0-Daten N456789014 Nachtigall, Nina Nicole"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:46962573-171b-45cf-82b1-9847688fbf02"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/bd5c24ca-1a53-45d3-aeb3-7b7875f3750e"
* entry[DocumentInformation][=].resource = VSDMComposition-N456789014
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-GKV-N456789014"
* entry[VSDMPatient][=].resource = VSDMPatient-GKV-N456789014
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-GKV-N456789014"
* entry[VSDMCoverage][=].resource = VSDMCoverage-GKV-N456789014
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-108028771"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-108028771
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-109083613"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-109083613

Instance: VSDMComposition-N456789014
InstanceOf: VSDMComposition
Title: "N456789014 Nachtigall, Nina Nicole"
Description: "Composition für VSDM 2.0-Daten N456789014 Nachtigall, Nina Nicole"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "bd5c24ca-1a53-45d3-aeb3-7b7875f3750e"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten N456789014 Nachtigall, Nina Nicole"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "108028771"
* section[+].entry.reference = "Patient/VSDMPatient-GKV-N456789014"
* section[+].entry.reference = "Coverage/VSDMCoverage-GKV-N456789014"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-108028771"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-109083613"

