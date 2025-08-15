Instance: ExampleOperationOutcome
InstanceOf: VSDMOperationOutcome
Title:   "Example Operation Outcome"
Usage: #example
Description: "Eine Beispielinstanz, die das Profil VSDMOperationOutcome erfüllt."
* id = "example-vsdm-operationoutcome"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMOperationOutcome"

// Slicing: Issue vom Typ vsdm-error
* issue[0].severity = #fatal
* issue[0].code = #invalid
* issue[0].details.coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_IK "Ungültige oder nicht bekannte Institutionskennung <ik>."
* issue[0].details.text = "Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) oder die KTR gar nicht bei diesem FD-Anbieter ist (fehlerhafter DNS-Eintrag)."
