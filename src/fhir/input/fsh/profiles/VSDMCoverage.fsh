Profile: VSDMCoverage
Parent: CoverageDeBasis
Title: "Versicherungsdaten"
Description: "Angaben zum Versicherungsverhältnis im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 
// Die Extensions sind in der Reihenfolge der Nennung der Attribute im logischen Modell aufgeführt.

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Versicherungsdaten"
  * ^definition = """
      Angaben zum Versicherungsverhältnis im Versichertenstammdatenmanagement (VSDM) 2.0
    """
  * ^comment = """
      Die Struktur wird unabhängig von der Versicherungsart (GKV/PKV) definiert.
    """

// Zuordnung aus Versicherungsdaten -> WOP
* extension contains $wop named WOP 1..1
* extension[wop]
  * ^short = "Wohnortprinzip (WOP)"
  * ^definition = """
      Kennzeichen zur Umsetzung des Wohnortprinzips (WOP).
    """
  * ^comment = """
      Hinweise zur Verwendung siehe auch https://ig.fhir.de/basisprofile-de/stable/ig-markdown-ExtensionsfrCoverage.html
    """
  * ^requirements = """
      Das Kennzeichen WOP ist gemäss § 2 Abs. 2 der Vereinbarung zur Festsetzung des Durchschnittsbetrages gemäss Artikel 2 § 2 Abs. 2 des Gesetzes zur Einführung des Wohnortprinzips bei Honorarvereinbarungen für Ärzte und Zahnärzte und zur Krankenversichertenkarte gemäss § 291 Abs. 2 Fünftes Sozialgesetzbuch (SGB V) erforderlich.
    """
// TODO ggf. eigenes ValueSet einführen, um Werte 00, 50, 55, 60, 61, 62 auszuschließen?

// Zuordnung aus Versicherungsdaten -> BesonderePersonengruppe
* extension contains $besondere-personengruppe named besonderePersonengruppe 0..1
* extension[besonderePersonengruppe]
  * ^short = "Besondere Personengruppe"
  * ^definition = """
      Gibt die Zugehörigkeit des Versicherten zu einer besonderen Personengruppe an.
    """
  * ^comment = """
      Hinweise zur Verwendung siehe auch https://ig.fhir.de/basisprofile-de/stable/ig-markdown-ExtensionsfrCoverage.html
    """
  * ^requirements = """
      Die Kennzeichnung erfolgt gemäß der aktuellen Schlüsseltabelle.
    """
// TODO ggf. eigenes ValueSet einführen, um Wert 00 auszuschließen? Texte sind auch unzureichend, führende Null?

// Zuordnung aus Versicherungsdaten -> Zuzahlungsstatus
* extension contains $zuzahlungsstatus named zuzahlungsstatus 0..1
* extension[zuzahlungsstatus]
  * ^short = "Zuzahlungsstatus"
  * ^definition = """
      Kennzeichnet die Befreiung des Versicherten von der Zuzahlungspflicht nach § 62 Abs. 3 SGB V.
      Achtung: Wenn keine Zuzahlungsbefreiung vorliegt, entfällt die gesamte Extension.
    """
  * ^comment = """
      Hinweise zur Verwendung siehe auch https://ig.fhir.de/basisprofile-de/stable/ig-markdown-ExtensionsfrCoverage.html
    """
  * ^requirements = """
      Befreiung des Versicherten von der Zuzahlungspflicht nach § 62 Abs. 3 SGB V.
    """ 
  * extension[status]
    * ^comment = """
        Wenn keine Zuzahlungsbefreiung vorliegt (der Wert also false wäre), entfällt die gesamte Extension.
      """
    * valueBoolean = true
  * extension[gueltigBis] 1..1
  * extension[gueltigBis].valueDate 1..1

// Zuordnung aus Versicherungsdaten -> [Abrechnender]Kostentraeger 
* payor
  * ^short = "Kostenträger"
// FIXME: Typreferenzen und Kardinalitäten von Haupt- und abrechnendem Kostenträger müssen noch in das Profil eingearbeitet werden

// ---

* status = #active (exactly)
* type 1..1
* type from VSDMVersicherungsartVS (required)
  * ^short = "Versicherungsart"
  * ^definition = "Art der Versicherung: gesetzliche oder private Versicherung"

* extension contains
    $versichertenart named versichertenart 1..1 MS and
    $kostenerstattung named gkv-kostenerstattung 0..1 MS and
    $ruhender-leistungsanspruch named ruhenderLeistungsanspruch 1..1 MS and
    VSDMDMPKennzeichenEX named vsdm-dmpKennzeichen 0..* MS and
    VSDMWahltarifeEX named vsdm-wahltarife 0..* MS and
    VSDMKostentraegerAngabestatusEX named vsdm-kostentraegerAngabestatus 1..1 MS and
    VSDMKostentraegerLaendercodeEX named vsdm-kostentraegerlaendercode 1..1 MS

// For better display on simplifier
* extension[vsdm-kostentraegerAngabestatus].url MS
* extension[versichertenart].url MS
* extension[besonderePersonengruppe].url MS
* extension[gkv-kostenerstattung].url MS
* extension[ruhenderLeistungsanspruch].url MS
* extension[vsdm-wahltarife].url MS
* extension[vsdm-dmpKennzeichen].url MS
* extension[vsdm-kostentraegerAngabestatus].url MS
* extension[vsdm-kostentraegerlaendercode].url MS

* beneficiary only Reference(VSDMPatient)
* beneficiary 1..1
* beneficiary.reference 1..1
* period 1..1
  * start 1..1
  * end 1..1
