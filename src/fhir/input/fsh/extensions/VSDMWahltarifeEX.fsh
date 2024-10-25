Extension: VSDMWahltarifeEX
Id: vsdm-versichertenart-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMWahltarifeEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt ein Kennzeichen für die Rechtsgrundlage des jeweiligen Wahltarifs an"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMWahltarifeEX" (exactly)
* value[x] only Coding
* value[x] from VSDMWahltarifeVS (required)
* value[x].system 1..
* value[x].code 1..