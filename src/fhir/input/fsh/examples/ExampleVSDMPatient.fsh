Instance: ValidExampleVSDMPatient
InstanceOf: VSDMPatient
Title: "Beispiel-Patient für VSDM 2.0"
Usage: #example
* id = "Valid-437f2555-2396-4c64-a656-e9553161ca3c"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"

* identifier[KVNR].value = "T024791905"

* name[Name].family = "Fernández"
* name[Name].family.extension[nachname].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[Name].family.extension[nachname].valueString = "Fernández"
* name[Name].given = "Maria"

* name[Name].prefix = "Dr."
* name[Name].prefix.extension[prefix-qualifier].url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"



* birthDate = "1970"
* address.type = #both
* address.line = "Blumenweg 14"
* address.line.extension[0][Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=][Hausnummer].valueString = "14"
* address.line.extension[+][Strasse].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=][Strasse].valueString = "Blumenweg"
* address.city = "Berlin"
* address.postalCode = "12345"
* address.country = "D"
* telecom = ContactPointAOKMXID