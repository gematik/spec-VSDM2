Extension: VSDMDMPKennzeichenEX
Id: vsdm-dmp-kennzeichen-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMDMPKennzeichenEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt die Teilnahme des Versicherten an einem oder mehreren Disease Management Programmen an."
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMDMPKennzeichenEX" (exactly)

* extension contains

	angabe 1..1 MS and
    teilnahme 0..1 and
	$dmp-kennzeichen named dmpkennzeichen 0..1 and
	beginn 0..1 MS and
	ende 0..1

* extension[angabe] ^definition = "Gibt an, ob die Kasse die DMP-Kennzeichnung in den VSD befüllt.:\r\ntrue = wird befüllt\r\nfalse = wird nicht befüllt"
* extension[angabe].value[x] only boolean

* extension[teilnahme] ^definition = "Gibt an, ob der Versicherte an einem DMP-Programm teilnimmt.:\r\ntrue = nimmt teil\r\nfalse = nimmt nicht teil"
* extension[teilnahme].value[x] only boolean


//* extension[kennzeichen].value[x] only Coding
//* extension[kennzeichen].value[x] from VSDMDMPKennzeichenVS (required)
//* extension[kennzeichen].value[x].system 1..
//* extension[kennzeichen].value[x].code 1..

/*
* extension[beginn] ^short = "Datum Beginn DMP"
* extension[beginn].value[x] only date
* extension[beginn].value[x] ^short = "Datum Beginn DMP"

* extension[ende] ^short = "Datum Ende DMP"
* extension[ende].value[x] only date
* extension[ende].value[x] ^short = "Datum Ende DMP"
*/


