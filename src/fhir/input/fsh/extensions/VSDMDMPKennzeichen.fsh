Extension: VSDMDMPKennzeichenEX
Id: vsdm-dmpKennzeichen-ex
Context: Coverage
* insert Meta
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMDMPKennzeichenEX"
* . ^short = "Gibt die Teilnahme des Versicherten an einem oder mehreren Disease Management Programmen an."
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMDMPKennzeichenEX" (exactly)

* extension contains
	VSDMDMPKennzeichenBasisEX named dmpKennzeichen 1..1 MS and
	dmp-zeitraum 1..1 MS and
	digitales-dmp 0..1 MS

* extension[dmp-zeitraum].value[x] only Period
* extension[dmp-zeitraum].value[x] ^short = "Zeitraum der Teilnahme am DMP"
// start
* extension[dmp-zeitraum].valuePeriod.start 1..1
* extension[dmp-zeitraum].valuePeriod.start ^short = "Startdatum des DMP-Zeitraums"
* extension[dmp-zeitraum].valuePeriod.start obeys date-precision-1
// end
* extension[dmp-zeitraum].valuePeriod.end ^short = "Enddatum des DMP-Zeitraums"
* extension[dmp-zeitraum].valuePeriod.end obeys date-precision-1

* extension[digitales-dmp].value[x] only boolean
* extension[digitales-dmp].value[x] ^short = "Information, ob ein digitales DMP vorhanden ist"

