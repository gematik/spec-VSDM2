Extension: VSDMRuhenderLeistungsanspruchEX
Id: vsdm-ruhenderleistungsanspruch-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMRuhenderLeistungsanspruchEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt Art und Dauer des ruhenden Leistungsanspruchs des Versicherten bei dem unter Kostenträger angegebenen Kostenträger an"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMRuhenderLeistungsanspruchEX" (exactly)

* extension contains 
    $ruhender-leistungsanspruch named ruhenderLeistungsanspruch 1..1 and
    kostentraeger-angabestatus 1..1 MS

* extension[ruhenderLeistungsanspruch].extension[art].value[x] from VSDMRuhenderLeistungsanspruchVS (required)