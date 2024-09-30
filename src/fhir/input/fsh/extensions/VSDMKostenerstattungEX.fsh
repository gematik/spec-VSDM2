Extension: VSDMKostenerstattungEX
Id: vsdm-kostenerstattung-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostenerstattungEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt an, ob der Kostenträger den Nachweis der Inanspruchnahme von Leisrungen der Abrechnungsart Kostnerstattung in den VSD speichert"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostenerstattungEX" (exactly)


* extension contains
    aerztlicheVersorgung 0..1 and
    zahnaerztlicheVersorgung 0..1 and
    stationaererBereich 0..1 and
    veranlassteLeistungen 0..1

* extension[aerztlicheVersorgung] ^definition = "Gibt die vom versicherten gewählte Kostenerstattung für die ärztliche Versorgung an:\r\ntrue = Kostenerstattung\r\nfalse = keine Kostenerstattung"
* extension[aerztlicheVersorgung].value[x] only boolean
* extension[zahnaerztlicheVersorgung] ^definition = "Gibt die vom versicherten gewählte Kostenerstattung für die zahnärztliche Versorgung an:\r\ntrue = Kostenerstattung\r\nfalse = keine Kostenerstattung"
* extension[zahnaerztlicheVersorgung].value[x] only boolean
* extension[stationaererBereich] ^definition = "Gibt die vom versicherten gewählte Kostenerstattung für den stationären Bereich an:\r\ntrue = Kostenerstattung\r\nfalse = keine Kostenerstattung"
* extension[stationaererBereich].value[x] only boolean
* extension[veranlassteLeistungen] ^definition = "Gibt die vom versicherten gewählte Kostenerstattung für veranlasste Leistungen an:\r\ntrue = Kostenerstattung\r\nfalse = keine Kostenerstattung"
* extension[veranlassteLeistungen].value[x] only boolean
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostenerstattungEX" (exactly)