Profile: VSDMBundle
Parent: Bundle
Title: "Versichertenstammdaten"
Description: "Bundle zur Übermittlung der Ressourcen im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Versichertenstammdaten"
  * ^definition = """
      Bundle zur Übermittlung der Ressourcen im Versichertenstammdatenmanagement (VSDM) 2.0
    """

* meta 1..1 MS
  * lastUpdated 1..1 MS
    * ^short = "Aktualisierungszeitpunkt (inhaltlich)"
    * ^definition = """
        Dieser Zeitpunkt gibt an, wann die Versichertenstammdaten zuletzt inhaltlich aktualisiert wurden.
      """  
* type = #collection (exactly)
  * ^comment = """
      Die im VSDM 2.0 übermittelten Versichertenstammdaten stellen nicht - wie bei anderen Diensten der Telematikinfrastruktur - ein zusammenhängendes [Dokument im Sinne der FHIR-Spezifikation](https://hl7.org/fhir/R4/documents.html) dar.
      Sie bestehen lediglich aus administrativen Daten, die zur Abbildung in FHIR auf mehrere miteinander verbundene Ressourcen verteilt sind.
      Aus diesem Grund wird auf den Overhead eines Document-Bundles verzichtet und lediglich eine Collection verwendet.
    """
* timestamp 1..1 MS
  * ^short = "Aktualisierungszeitpunkt (technisch)"
  * ^definition = """
      Dieser Zeitpunkt gibt an, wann das gesamte Bundle erstellt wurde.
    """  
  * ^comment = """
      Wenn der VSDM 2.0 Resource Server das gesamte Bundle speichert, darf dieser Zeitpunkt gleich der Angabe in meta.lastUpdated sein. 
      Wenn der Resource Server das Bundle bei jeder Anfrage neu erstellt, wird hier jeweils der aktuelle Erstellungszeitpunkt angegeben.
    """

* entry MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #closed
* entry contains
    VSDMPatient 1..1 and
    VSDMCoverageGKV 1..1 and 
    VSDMPayorOrganization 1..2  
* entry[VSDMPatient] MS
  * resource 1..1 MS
  * resource only VSDMPatient
* entry[VSDMCoverageGKV] MS
  * resource 1..1 MS
  * resource only VSDMCoverageGKV or VSDMCoveragePKV 
* entry[VSDMPayorOrganization] MS
  * resource 1..1 MS
  * resource only VSDMPayorOrganization
