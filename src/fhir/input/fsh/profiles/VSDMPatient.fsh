Profile: VSDMPatient
Parent: EPAPatient
Id: vsdm-patient
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"
* insert Meta
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient" (exactly)
* identifier 1..1

* address only address-de-basis

* name[Name].family.extension[nachname]
  * ^comment = "Gibt den Nachnamen der Person an"

// TODO: Slicing Testen mit Beipsielinstanz
* telecom
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.description = "Slices for Patient contact information"
  * ^slicing.ordered = false
  
* telecom contains ti-messenger 1..1 MS

* telecom[ti-messenger] only VSDMContactPointTIMessenger









Instance: VSDMPatientSample
InstanceOf: VSDMPatient
Title: "Patient for VSDM 2"
Usage: #example
* id = "437f2555-2396-4c64-a656-e9553161ca3c"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"

* identifier[KVNR].value = "T024791905"

* name[Name].family = "Königstein"
* name[Name].family.extension[nachname].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[Name].family.extension[nachname].valueString = "Königstein"
* name[Name].given = "Ludger"
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
* telecom = ContactPointAOKMXID

