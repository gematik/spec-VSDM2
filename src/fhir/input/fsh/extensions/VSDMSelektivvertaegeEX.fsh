Extension: VSDMSelektivvertraegeEX
Id: vsdm-selektivvertraege-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMSelektivvertraegeEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt an, ob für den Versicherten ein Selektivvertrag vorliegt"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMSelektivvertraegeEX" (exactly)


* extension contains
    aerztlich 1..1 and
    zahnaerztlich 1..1

* extension[aerztlich] ^definition = "Gibt an, ob fuer den Versicherten ein aerztlicher Selektivvertrag vorliegt.:\r\ntrue = Kostenerstattung\r\nfalse = keine Kostenerstattung"
* extension[aerztlich].value[x] only boolean
* extension[zahnaerztlich] ^definition = "Gibt an, ob fuer den Versicherten ein zahnaerztlicher Selektivvertrag vorliegt.:\r\ntrue = Kostenerstattung\r\nfalse = keine Kostenerstattung"
* extension[zahnaerztlich].value[x] only boolean

* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMSelektivvertraegeEX" (exactly)