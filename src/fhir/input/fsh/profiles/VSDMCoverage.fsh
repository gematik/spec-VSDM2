Profile: VSDMCoverage
Parent: coverage-de-basis
Id: vsdm-coverage
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage"
* insert Meta
* meta 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage" (exactly)
* status = #active (exactly)
* type 1..1
* type from VSDMVersicherungsartVS (required)
  * ^short = "Versicherungsart"
  * ^definition = "Art der Versicherung: gesetzliche oder private Versicherung"

* extension contains
    $versichertenart named versichertenart 1..1 MS and
    $wop named wop 1..1 MS and
    $besondere-personengruppe named besonderePersonengruppe 0..1 MS and
    $kostenerstattung named gkv-kostenerstattung 0..1 MS and
    $ruhender-leistungsanspruch named ruhenderLeistungsanspruch 1..1 MS and
    $zuzahlungsstatus named zuzahlungsstatus 1..1 MS and
    VSDMDMPKennzeichenEX named vsdm-dmpKennzeichen 0..* MS and
    VSDMWahltarifeEX named vsdm-wahltarife 0..* MS and
    VSDMKostentreagerAngabestatusEX named vsdm-kostentragerAngabestatus 1..1 MS and
    VSDMKostentraegerLaendercodeEX named vsdm-kostentraegerlaendercode 1..1 MS

// For better display on simplifier
* extension[vsdm-kostentragerAngabestatus].url MS
* extension[versichertenart].url MS
* extension[wop].url MS
* extension[besonderePersonengruppe].url MS
* extension[gkv-kostenerstattung].url MS
* extension[ruhenderLeistungsanspruch].url MS
* extension[zuzahlungsstatus].url MS
* extension[vsdm-wahltarife].url MS
* extension[vsdm-dmpKennzeichen].url MS
* extension[vsdm-kostentragerAngabestatus].url MS
* extension[vsdm-kostentraegerlaendercode].url MS

* beneficiary only Reference(VSDMPatient)
* beneficiary 1..1
* beneficiary.reference 1..1
* period 1..1
  * start 1..1
  * end 1..1
* payor 1..1
  * extension contains $AbrechnendeIK named abrechnendeIK 0..1
  * identifier 1..1
  * identifier only IdentifierIknr
  * display 1..1
    * ^short = "Name des Kostenträgers"

