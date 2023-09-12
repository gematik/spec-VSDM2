Profile: VSDMPatient
Parent: Patient
Id: vsdm-patient
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"
* insert Meta
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient" (exactly)
* identifier 1..1
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #closed
* identifier contains
    versichertenId_GKV 0..1 and
    versichertenID_pkv 0..1
* identifier[versichertenId_GKV] only $identifier-kvid-10
* identifier[versichertenId_GKV].system
* identifier[versichertenId_GKV].value
* identifier[versichertenID_pkv] only $identifier-pkv
* identifier[versichertenID_pkv].system
* identifier[versichertenID_pkv].value

