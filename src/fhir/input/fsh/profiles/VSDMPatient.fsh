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
* name only humanname-de-basis
* address only address-de-basis

Instance: VSDMPatientSample
InstanceOf: VSDMPatient
Title: "Patient for VSDM 2"
Usage: #example
* id = "437f2555-2396-4c64-a656-e9553161ca3c"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"
* identifier[versichertenId_GKV].type = http://fhir.de/CodeSystem/identifier-type-de-basis#GKV
* identifier[versichertenId_GKV].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[versichertenId_GKV].value = "T024791905"
* name.use = #official
* name.family = "Königstein"
* name.family.extension[nachname].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name.family.extension[nachname].valueString = "Königstein"
* name.given = "Ludger"
* birthDate = "1935-06-22"
* address.type = #both
* address.line = "Blumenweg 14"
* address.line.extension[0][Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=][Hausnummer].valueString = "14"
* address.line.extension[+][Strasse].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=][Strasse].valueString = "Blumenweg"
* address.city = "Esens"
* address.postalCode = "26427"
* address.country = "D"