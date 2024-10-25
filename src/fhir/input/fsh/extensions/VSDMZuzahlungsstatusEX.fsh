Extension: VSDMZuzahlungsstatusEX
Id: vsdm-zuzahlungsstatus-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMZuzahlungsstatusEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt an, ob für den Versicherten eine Befreiung von der Zuzahlungspflicht nach § 62 Abs. 3 SGB V vorliegt."
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMZuzahlungsstatusEX" (exactly)


* extension contains 
    $zuzahlungsstatus named zuzahlungsstatus 1..1 and
    kostentraeger-angabestatus 1..1 MS
