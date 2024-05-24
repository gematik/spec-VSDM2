Extension: VSDMFestzuschusshoeheEX
Id: vsdm-festzuschusshoehe-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMFestzuschusshoeheEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Festzuschusshöhe gibt die Höhe des von der GKV gewährten Festzuschusses bei Versorgungen mit Zahnersatz an. Die Zuschusshöhe richtet sich nach der Anzahl an Jahren mit durchgehend durchgeführter Vorsorge oder Prophylaxe"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMFestzuschusshoeheEX" (exactly)
* value[x] only Coding
* value[x] from VSDMFestzuschusshoeheVS (required)
* value[x].system 1..
* value[x].code 1..