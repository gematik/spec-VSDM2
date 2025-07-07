Profile: VSDMOperationOutcome
Parent: OperationOutcome
Title: "Fehlermeldung des VSDM Resource Servers"
Description: "Strukturierte Fehlermeldung im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Fehlermeldung des VSDM Resource Servers"
  * ^definition = """
      Strukturierte Fehlermeldung im Versichertenstammdatenmanagement (VSDM) 2.0
    """

// TODO Inhalte noch prüfen

* issue MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "details.coding.system"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing der OperationOutcome Issues"
  * ^slicing.ordered = false

* issue contains vsdm-error 0..1 MS


* issue[vsdm-error]
  * severity = #fatal (exactly)
  * severity ^definition = "Angabe der Schwere des Fehlers"
  * code MS
  * details 1..
    * ^definition = "Nähere Beschreibung des Fehlers"
    * coding 1..1
    * coding from VSDMErrorcodeVS (required)
      * system 1..1
      * code 1..1
        * ^short = "Errorcode"
        * ^definition = "Errorcode"
      * display 1..1
      * display ^short = "Errortext"
    * text 0..1
    * text ^short = "Errortext für Entwickler"
