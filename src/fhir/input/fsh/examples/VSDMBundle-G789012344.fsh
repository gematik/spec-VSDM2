Instance: VSDMBundle-G789012344
InstanceOf: VSDMBundle
Title: "G789012344 Edle von der Graugans, Gabriele"
Description: "VSDM 2.0-Daten G789012344 Edle von der Graugans, Gabriele"
Usage: #example

* identifier.value = "urn:uuid:b8aab485-0cf4-4600-9e47-db2177236ae7"
* type = #document
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[DocumentInformation][+].fullUrl = "https://gematik.de/fhir/Composition/7023f33d-f186-42b9-8ac0-12f8386e1e0b"
* entry[DocumentInformation][=].resource = VSDMComposition-G789012344
* entry[VSDMPatient][+].fullUrl = "https://gematik.de/fhir/Patient/VSDMPatient-G789012344"
* entry[VSDMPatient][=].resource = VSDMPatient-G789012344
* entry[VSDMCoverage][+].fullUrl = "https://gematik.de/fhir/Coverage/VSDMCoverage-G789012344"
* entry[VSDMCoverage][=].resource = VSDMCoverage-G789012344
* entry[VSDMPayorOrganization][+].fullUrl = "https://gematik.de/fhir/Organization/VSDMPayorOrganization105413578"
* entry[VSDMPayorOrganization][=].resource = VSDMPayorOrganization-105413578

Instance: VSDMComposition-G789012344
InstanceOf: VSDMComposition
Title: "G789012344 Edle von der Graugans, Gabriele"
Description: "Composition für VSDM 2.0-Daten G789012344 Edle von der Graugans, Gabriele"
Usage: #inline

* id = "7023f33d-f186-42b9-8ac0-12f8386e1e0b"
* status = #final
* date = "2025-07-14T05:06:07.890+01:00"
* title = "VSDM 2.0-Daten G789012344 Edle von der Graugans, Gabriele"
* author.identifier
  * system = "http://fhir.de/sid/arge-ik/iknr"
  * value = "105413578"
* section[+].entry.reference = "Patient/VSDMPatient-G789012344"
* section[+].entry.reference = "Coverage/VSDMCoverage-G789012344"
* section[+].entry.reference = "Organization/VSDMPayorOrganization105413578"
