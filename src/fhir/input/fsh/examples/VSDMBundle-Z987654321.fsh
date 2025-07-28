Instance: VSDMBundle-Z987654321
InstanceOf: VSDMBundle
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias"
Description: "VSDM 2.0-Daten Z987654321 Graf von und zu Zaunkönig, Zacharias"
Usage: #example

* meta.profile[0] = Canonical(VSDMBundle|1.0.0)

* identifier.value = "urn:uuid:6dc3a6f8-6fec-40a5-9432-e9c339db0f5c"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/9c850daf-a4fc-4f72-b52d-ea373c063dd4"
* entry[DocumentInformation][=].resource = VSDMComposition-Z987654321
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-Z987654321"
* entry[VSDMPatient][=].resource = VSDMPatient-Z987654321
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-Z987654321"
* entry[VSDMCoverage][=].resource = VSDMCoverage-Z987654321
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-108213958"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-108213958
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization-100293710"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-100293710

Instance: VSDMComposition-Z987654321
InstanceOf: VSDMComposition
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias"
Description: "Composition für VSDM 2.0-Daten Z987654321 Graf von und zu Zaunkönig, Zacharias"
Usage: #inline

* meta.profile[0] = Canonical(VSDMComposition|1.0.0)

* id = "9c850daf-a4fc-4f72-b52d-ea373c063dd4"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten Z987654321 Graf von und zu Zaunkönig, Zacharias"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "103169760"
* section[+].entry.reference = "Patient/VSDMPatient-B234567895"
* section[+].entry.reference = "Coverage/VSDMCoverage-B234567895"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-108213958"
* section[+].entry.reference = "Organization/VSDMPayorOrganization-100293710"
