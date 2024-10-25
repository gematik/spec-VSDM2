Extension: VSDMKostenerstattungEX
Id: vsdm-kostenerstattung-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostenerstattungEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt an, ob der Kostenträger den Nachweis der Inanspruchnahme von Leisrungen der Abrechnungsart Kostnerstattung in den VSD speichert"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostenerstattungEX" (exactly)

* extension contains
    $kostenerstattung named gkv-kostenerstattung 0..1 and
    kostentraeger-angabestatus 1..1 MS