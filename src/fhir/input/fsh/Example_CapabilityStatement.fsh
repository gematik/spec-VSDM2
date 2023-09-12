Instance: ExampleCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* insert Meta-Inst
* url = "https://gematik.de/fhir/yourProjectHere/v1/yourModuleHere/CapabilityStatement/yourCapabilityStatementPurposeNameHere"
* name = "CapabilityStatementYourModuleServer"
* title = "CapabilityStatement YourModule Server"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein Projekt-konformes System unterstützen muss um das Bestätigungsverfahren des Moduls &quot;Dokumentenaustausch&quot; zu bestehen."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "https://gematik.de/fhir/yourProject|1.0.0"
* rest.mode = #server
* rest.resource[+]
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * type = #Patient
  * supportedProfile = "https://gematik.de/fhir/yourProjectHere/v1/yourModuleHere/StructureDefinition/ExamplePatient"
  * interaction[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * code = #search-type
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "identifier"
    * definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
    * type = #token
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "family"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-family"
    * type = #string
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "given"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-given"
    * type = #string
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "birthdate"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
    * type = #date
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "gender"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
    * type = #token


