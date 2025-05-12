Extension: VSDMWahltarifeEX
Id: vsdm-wahltarife-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMWahltarifeEX"
* insert Meta
* . ^short = "Gibt ein Kennzeichen für die Rechtsgrundlage des jeweiligen Wahltarifs an"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMWahltarifeEX" (exactly)

* obeys wahltarif-ex-vertragskennzeichen-bei-73b

* extension contains
    wahltarif 1..1 MS and
    wahltarif-zeitraum 1..1 MS and
    wahltarif-vertragskennzeichen 0..1 MS 
    
// Wahltarif
* extension[wahltarif].value[x] only Coding
* extension[wahltarif].valueCoding from VSDMWahltarifeVS (required)
  * system 1..1
  * code 1..1

// Wahltarif Zeitraum
* extension[wahltarif-zeitraum].value[x] only Period
  * ^short = "Zeitraum der Gültigkeit des Wahltarifs"
// start
* extension[wahltarif-zeitraum].valuePeriod.start 1..1
  * ^short = "Startdatum des Wahltarif-Zeitraums"
  * obeys date-precision-1
// end
* extension[wahltarif-zeitraum].valuePeriod.end ^short = "Enddatum des Wahltarif-Zeitraums"
* extension[wahltarif-zeitraum].valuePeriod.end obeys date-precision-1

// Wahltarif Kennzeichen
* extension[wahltarif-vertragskennzeichen].value[x] only string
* extension[wahltarif-vertragskennzeichen].valueString ^short = "Vertragskennzeichnen des Wahltarifs"
* extension[wahltarif-vertragskennzeichen].valueString ^comment = "Länge des Strings ist maximal 25 Zeichen"

Invariant: wahltarif-ex-vertragskennzeichen-bei-73b
Description: "Vertragskennzeichens bei Wahltarif muss angegeben werden, wenn Wahltarif nach §73b SGB V besteht"
Expression: "extension.where(url = 'wahltarif').valueCoding.code = '1' implies (extension.where(url = 'wahltarif-vertragskennzeichen').exists() and extension.where(url = 'wahltarif-vertragskennzeichen').valueString.empty().not())"
Severity: #error

// TODO: Positiv + Negativ Beispiel erstellen

