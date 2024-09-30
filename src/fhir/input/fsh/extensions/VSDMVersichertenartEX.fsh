Extension: VSDMVersichertenartEX
Id: vsdm-versichertenart-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMVersichertenartEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt die Versichertenart des Versicherten an"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMVersichertenartEX" (exactly)
* value[x] only Coding
* value[x] from VSDMVersichertenartVS (required)
* value[x].system 1..
* value[x].code 1..