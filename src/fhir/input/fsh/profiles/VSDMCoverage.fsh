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
* extension contains $extWOP named WOP 1..1 MS
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
  * value[x] from VSDMWohnortprinzipVS (required)
  * valueCoding.system = $csWOP (exactly)

// Zuordnung aus Versicherungsdaten -> BesonderePersonengruppe
* extension contains $extBesonderePersonengruppe named besonderePersonengruppe 0..1 MS
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
  * value[x] from VSDMBesonderePersonengruppeVS (required)
  * valueCoding.system = $csPersonengruppe (exactly)

// Zuordnung aus Versicherungsdaten -> Zuzahlungsstatus
* extension contains $extZuzahlungsstatus named zuzahlungsstatus 0..1 MS
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

// Zuordnung aus Versicherungsdaten -> DMP
* extension contains VSDMDMPTeilnahme named dmp 0..* MS
* extension[dmp]
  * ^short = "DMP-Teilnahme"
  * ^definition = """
      Angaben zur Teilnahme des Versicherten an Disease Management-Programmen.
    """

// Zuordnung aus Versicherungsdaten -> Kostenerstattung
* extension contains $extKostenerstattung named kostenerstattung 0..1 MS
* extension[kostenerstattung]
  * ^short = "Kostenerstattung"
  * ^definition = """
      Gibt die vom Versicherten gewählte Kostenerstattung für den jeweiligen Bereich an.
    """
  * ^comment = """
      Hinweise zur Verwendung siehe auch https://ig.fhir.de/basisprofile-de/stable/ig-markdown-ExtensionsfrCoverage.html
    """
  * extension[aerztlicheVersorgung] 1..1
    * ^short = "Ärztliche Versorgung"
    * value[x] 1..1
  * extension[zahnaerztlicheVersorgung] 1..1
    * ^short = "Zahnärztliche Versorgung"
    * value[x] 1..1
  * extension[stationaererBereich] 1..1
    * ^short = "Stationärer Bereich"
    * value[x] 1..1
  * extension[veranlassteLeistungen] 1..1
    * ^short = "Veranlasste Leistungen"
    * value[x] 1..1

// Zuordnung aus Versicherungsdaten -> RuhenderLeistungsanspruch
* extension contains $extRuhenderLeistungsanspruch named ruhenderLeistungsanspruch 0..1 MS
* extension[ruhenderLeistungsanspruch]
  * ^short = "Ruhender Leistungsanspruch"
  * ^definition = """
      Angaben zum ruhenden Leistungsanspruch des Versicherten
    """
  * ^comment = """
      Hinweise zur Verwendung siehe auch https://ig.fhir.de/basisprofile-de/stable/ig-markdown-ExtensionsfrCoverage.html
    """
  * extension[art]
    * value[x] 1..1
    * valueCoding from VSDMRuhenderLeistungsanspruchArtVS
  * extension[dauer].value[x] 1..1

// Zuordnung aus Versicherungsdaten -> Versichertenart
* extension contains $extVersichertenart named versichertenart 1..1 MS
* extension[versichertenart]
  * ^short = "Art des Versicherten"
  * ^definition = """
      Art des Versicherten
    """
  * ^comment = """
      Hinweise zur Verwendung siehe auch https://ig.fhir.de/basisprofile-de/stable/ig-markdown-ExtensionsfrCoverage.html
    """
    * value[x] 1..1

// Bezug zum Versicherten
* beneficiary only Reference(VSDMPatient) 

// Zuordnung aus Versicherungsdaten -> Versicherungsschutz
* period 1..1 MS
  * ^short = "Gültigkeitszeitraum des Versicherungsschutzes"
  * ^definition = """
      Gibt den Beginn und, sofern anwendbar, das Ende des Versicherungsschutzes an.
    """
  * start 1..1
    * ^short = "Beginn des Versicherungsschutzes"
    * ^definition = """
        Gibt den Beginn des Versicherungsschutzes (Leistungsanspruchs) des Versicherten bei dem Kostenträger an. 
      """
  * end 0..1
    * ^short = "Ende des Versicherungsschutzes"
    * ^definition = """
        Gibt das Ende des Versicherungsschutzes (Leistungsanspruchs) des Versicherten bei dem Kostenträger an, wenn ein Endedatum festgelegt ist. 
      """
    * ^comment = """
        Hier kann nicht das Ende der Gültigkeit einer konkreten eGK angegeben werden, weil der VSDM 2.0 Resource Server keine Kenntnis davon erlangt, welche konkrete eGK verwendet wurde.
        Für den Fall der Authentifikation mit einer elektronischen Identität liegt ohnehin kein eGK-Gültigkeitsdatum vor.
      """

// Extension und Slicing zur Unterscheidung von Haupt- und abrechnendem Kostenträger
* payor
  * ^short = "Kostenträger"
  * extension contains VSDMKostentraegerRolle named kostentraegerRolle 0..1 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "extension('https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraegerRolle').value"
  * ^slicing.rules = #open
  * extension[kostentraegerRolle]
    * ^short = "Rolle des Kostenträgers"
    * ^definition = """
        Rolle des Kostenträgers (Haupt- oder abrechnender Kostenträger)
      """

// Zuordnung aus Versicherungsdaten -> Kostentraeger 
* payor contains Hauptkostentraeger 1..1 MS
* payor[Hauptkostentraeger] only Reference(VSDMPayorOrganization)
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger"

// Zuordnung aus Versicherungsdaten -> AbrechnenderKostentraeger 
* payor contains abrechnenderKostentraeger 0..1 MS
* payor[abrechnenderKostentraeger] only Reference(VSDMPayorOrganization)
  * extension[kostentraegerRolle].valueCoding = #A "abrechnender Kostentraeger"
