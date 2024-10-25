Profile: VSDMCoverage
Parent: coverage-de-basis
Id: vsdm-coverage
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage"
* insert Meta
* meta 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMCoverage" (exactly)
* status = #active (exactly)
* type 1..1
* type from $versicherungsart-de-basis (required)
  * ^short = "Versicherungsart"
  * ^definition = "Art der Versicherung: Selbstzahler, gesetzliche/private Versicherung, Berufsgenossenschaft oder Sozialamt"

* extension contains
    $versichertenart named versichertenart 0..1 and
    $wop named wop 0..1 and
    $besondere-personengruppe named besonderePersonengruppe 0..1 and
    $kostenerstattung named gkv-kostenerstattung 0..1 and
    $ruhender-leistungsanspruch named ruhenderLeistungsanspruch 1..1 and
    $zuzahlungsstatus named zuzahlungsstatus 1..1 and
    VSDMDMPKennzeichenEX named vsdm-dmpKennzeichen 0..* and 
    VSDMWahltarifeEX named vsdm-wahltarife 0..* and
    VSDMKostentreagerAngabestatusEX named vsdm-kostentragerAngabestatus 1..1 MS

// For better display on simplifier
* extension[vsdm-kostentragerAngabestatus] ^short = "Kostenträgerangabestatus"
* extension[versichertenart] ^short = "Versichertenart"
* extension[wop] ^short = "Wohnortprinzip"
* extension[besonderePersonengruppe] ^short = "Besondere Personengruppe"
* extension[gkv-kostenerstattung] ^short = "GKV-Kostenerstattung"
* extension[ruhenderLeistungsanspruch] ^short = "Ruhender Leiustungsanspruch"
* extension[zuzahlungsstatus] ^short = "Zuzahluungsstatus"

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

