Instance: ValidExampleVSDMPatient
InstanceOf: VSDMPatient
Title: "Beispiel-Patient für VSDM 2.0"
Usage: #example
* id = "Valid-437f2555-2396-4c64-a656-e9553161ca3c"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"

* identifier[KVNR].value = "T024791905"

* name[Name]
  * family = "Fernández"
    * extension[nachname].valueString = "Fernández"
  * given = "Maria"
  * prefix = "Dr."
    * extension[prefix-qualifier].valueCode = #AC
  * text = "Dr. Maria Fernández"


* gender = #female
* birthDate = "1970"
* address.type = #both
* address.line = "Blumenweg 14"
* address.line.extension[0][Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=][Hausnummer].valueString = "14"
* address.line.extension[+][Strasse].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=][Strasse].valueString = "Blumenweg"
* address.city = "Berlin"
* address.postalCode = "12345"
* address.country = $cs-iso3166-1-2#DE


Instance: VSDMPatientSample
InstanceOf: VSDMPatient
Title: "Patient for VSDM 2"
Usage: #example
* id = "437f2555-2396-4c64-a656-e9553161ca3c"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"

* identifier[KVNR].value = "T024791905"

* name[Name]
  * family = "Graf von und zu Königstein"
    * extension[namenszusatz].valueString = "Graf"
    * extension[nachname].valueString = "Königstein"
    * extension[vorsatzwort].valueString = "von und zu"
  * given = "Ludger"
  * prefix = "Prof. Dr. med. Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
  * text = "Prof. Dr. med. Dr. rer. nat. Ludger Graf von und zu Königstein"

* gender = #male
* birthDate = "1935-06-22"
* address.type = #both
* address.line = "Blumenweg 14"
* address.line.extension[0][Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=][Hausnummer].valueString = "14"
* address.line.extension[+][Strasse].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=][Strasse].valueString = "Blumenweg"
* address.city = "Esens"
* address.postalCode = "26427"
* address.country = $cs-iso3166-1-2#DE
