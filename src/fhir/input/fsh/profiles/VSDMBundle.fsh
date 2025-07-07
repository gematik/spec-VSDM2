Profile: VSDMBundle
Parent: Bundle
Title: "Bundle der VSDM 2.0-Ressourcen"
Description: "Bundle zur Übermittlung der Ressourcen im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Bundle der VSDM 2.0-Ressourcen"
  * ^definition = """
      Bundle zur Übermittlung der Ressourcen im Versichertenstammdatenmanagement (VSDM) 2.0
    """

// TODO Inhalte noch prüfen
* id 1..1
* identifier 1..1
  * system 1..1
  * system = "urn:ietf:rfc:3986" (exactly)
  * value 1..1
  * value ^short = "a unique bundle identifier"
  //TODO: * value ^example.valueString = "6c1b0aee-42d4-4684-871e-98258f189a71"
* type = #document (exactly)
* timestamp 1..1
* entry
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    DocumentInformation 1..1 and
    VSDMPatient 1..1 and
    VSDMCoverage 1..1 and 
    VSDMPayorOrganization 1..2  
* entry[DocumentInformation].resource 1..
* entry[DocumentInformation].resource only VSDMComposition
* entry[VSDMPatient].resource 1..
* entry[VSDMPatient].resource only VSDMPatient
* entry[VSDMCoverage].resource 1..
* entry[VSDMCoverage].resource only VSDMCoverage
* entry[VSDMPayorOrganization].resource 1..
* entry[VSDMPayorOrganization].resource only VSDMPayorOrganization
