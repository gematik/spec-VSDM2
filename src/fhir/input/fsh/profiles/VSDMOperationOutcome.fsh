Profile: VSDMOperationOutcome
Parent: OperationOutcome
Id: vsdm-operationoutcome
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMOperationOutcome"
* insert Meta
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMOperationOutcome" (exactly)

* issue MS
  * ^slicing.discriminator.type = #value
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
      * code ^short = "Errorcode"
      * code ^definition = "Errorcode"
      * display 1..1
      * display ^short = "Errortext"
    * text 0..1
    * text ^short = "Errortext für Entwickler"
