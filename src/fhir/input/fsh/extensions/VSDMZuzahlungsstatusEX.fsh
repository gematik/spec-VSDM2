Extension: VSDMZuzahlungsstatusEX
Id: vsdm-zuzahlungsstatus-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMZuzahlungsstatusEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt an, ob für den Versicherten eine Befreiung von der Zuzahlungspflicht nach § 62 Abs. 3 SGB V vorliegt."
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMZuzahlungsstatusEX" (exactly)

* extension contains
    status 1..1 and
    gueltigBis 0..*
* extension[status] ^short = "Status der Befreiung"
* extension[status] ^definition = "true = von Zuzahlungspflicht befreit\r\nfalse = von Zuzahlungspflicht nicht befreit "
* extension[status].value[x] only boolean
* extension[status].value[x] ^short = "Status der Befreiung"
* extension[status].value[x] ^definition = "true = von Zuzahlungspflicht befreit\r\nfalse = von Zuzahlungspflicht nicht befreit "
* extension[gueltigBis] ^short = "Ende der Gültigkeit"
* extension[gueltigBis].value[x] only date
* extension[gueltigBis].value[x] ^short = "Ende der Gültigkeit"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMZuzahlungsstatusEX" (exactly)