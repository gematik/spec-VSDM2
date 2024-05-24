Profile: VSDMOperationOutcome
Parent: OperationOutcome
Id: vsdm-operationoutcome
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMOperationOutcome"
* insert Meta
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMOperationOutcome" (exactly)
* issue ..1 MS
* issue.severity = #fatal (exactly)
* issue.severity ^definition = "Angabe der Fehlerkategorie"
* issue.code MS
* issue.details 1..
* issue.details ^definition = "nähere Beschreibung des Fehlers"
* issue.details.coding 1..1
* issue.details.coding from VSDMErrorcodeVS (required)
* issue.details.coding.system 1..
* issue.details.coding.code 1..
* issue.details.coding.code ^short = "Errorcode"
* issue.details.coding.code ^definition = "Errorcode"
* issue.details.coding.display 1..
* issue.details.coding.display ^short = "Errortext"
* issue.details.text ..1
* issue.details.text ^short = "Errortext für Entwickler"
