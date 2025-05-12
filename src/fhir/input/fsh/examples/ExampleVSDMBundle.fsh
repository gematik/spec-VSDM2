Instance: Vsdm2BundleSample
InstanceOf: VSDMBundle
Title: "GKV VSDM 2 Bundle"
Usage: #example
* id = "9b6ac30d-246d-4eab-af83-544564792089"
* identifier.value = "urn:uuid:9b6ac30d-246d-4eab-af83-544564792089"
* type = #document
* timestamp = "2023-11-03T12:02:23.157+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/c624cf47-e235-4624-af71-0a09dc9254dc"
* entry[DocumentInformation][=].resource = VSDM2CompositionSample
* entry[VSDMKostentraeger][+].fullUrl = "https://gematik.de/fhir/Kostentraeger/2a6924bf-6e6a-4ef3-b79f-c2138c10712f"
* entry[VSDMKostentraeger][=].resource = VSDMKostentraegerMain
* entry[VSDMKostentraeger][+].fullUrl = "https://gematik.de/fhir/Kostentraeger/d1f7b106-7f99-40d6-9f21-50b051301127"
* entry[VSDMKostentraeger][=].resource = VSDMKostentraegerBilling
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/437f2555-2396-4c64-a656-e9553161ca3c"
* entry[VSDMPatient][=].resource = VSDMPatientSample
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/2d4da53a-413a-48fe-b908-2e67b5761523"
* entry[VSDMCoverage][=].resource = VSDMCoverageSample
* signature.type.system = "urn:iso-astm:E1762-95:2013"
* signature.type.code = #1.2.840.10065.1.12.1.7
* signature.type.display = "Consent Signature"
* signature.when = "2023-11-03T12:02:23.157+01:00"
* signature.who.identifier.value = "12345678"
* signature.sigFormat = #application/pkcs7-mime
* signature.data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="