Extension: VSDMBesonderePersonengruppeEX
Id: vsdm-besonderepersonengruppe-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMBesonderePersonengruppeEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt die Zugehörigkeit des Versicherten zu einer besonderen Personengruppe an. Die Kennzeichnung erfolgt gemäß Schlüsseltabelle"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMBesonderePersonengruppeEX" (exactly)
* value[x] only Coding
* value[x] from VSDMBesonderePersonengruppeVS (required)
* value[x].system 1..
* value[x].code 1..