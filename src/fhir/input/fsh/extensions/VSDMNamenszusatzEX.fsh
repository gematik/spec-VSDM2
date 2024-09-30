Extension: VSDMNamenszusatzEX
Id: vsdm-namenszusatz-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMNamenszusatzEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt die Namenszusätze der Person an, z.B.:Freiherr. Mehrere Namenzusätze werden durch Leerzeichen getrennt angegeben. ANlage 7 (Tabelle der gültigen Namenszusätze) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMNamenszusatzEX" (exactly)
* value[x] only string
* value[x] ^short = "Namenszusatz"
* value[x] ^definition = "Namenszusatz zum Nachnamen z.B. Freiherr von, Gräfin etc"