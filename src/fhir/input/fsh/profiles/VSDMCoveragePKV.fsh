Profile: VSDMCoveragePKV
Parent: CoverageDeBasis
Title: "Versicherungsdaten PKV"
Description: "Angaben zum PKV-Versicherungsverhältnis im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 
// Die Extensions sind in der Reihenfolge der Nennung der Attribute im logischen Modell aufgeführt.

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Versicherungsdaten PKV"
  * ^definition = """
      Angaben zum PKV-Versicherungsverhältnis im Versichertenstammdatenmanagement (VSDM) 2.0
    """
  * ^comment = """
      Zur Harmonisierung der Strukturen mit dem deutschen Basisprofil werden getrennte Profile für PKV und PKV gebildet.
    """

// Zuordnung aus Versicherungsdaten -> Versichertenart
* extension contains VSDMVersichertenartPKV named versichertenart 1..1 MS
* extension[versichertenart]
  * ^short = "Art des Versicherten"
  * ^definition = """
      Art des Versicherten
    """

// Versicherungsart (PKV)
* type = $csVersicherungsart#PKV (exactly)

// Bezug zum Versicherten
* beneficiary only Reference(VSDMPatient) 

// Zuordnung aus Versicherungsdaten -> Versicherungsschutz
* period MS // zur Kardinalität siehe Invariante VSDMCoveragePKV-period-1
  * ^short = "Gültigkeitszeitraum des Versicherungsschutzes"
  * ^definition = """
      Gibt den Beginn und, sofern anwendbar, das Ende des Versicherungsschutzes an.
    """
  * start MS
    * ^short = "Beginn des Versicherungsschutzes"
    * ^definition = """
        Gibt den Beginn des Versicherungsschutzes (Leistungsanspruchs) des Versicherten bei dem Kostenträger an. 
      """
  * end MS
    * ^short = "Ende des Versicherungsschutzes"
    * ^definition = """
        Gibt das Ende des Versicherungsschutzes (Leistungsanspruchs) des Versicherten bei dem Kostenträger an, wenn ein Endedatum festgelegt ist. 
      """
    * ^comment = """
        Hier kann nicht das Ende der Gültigkeit einer konkreten eGK angegeben werden, weil der VSDM 2.0 Resource Server keine Kenntnis davon erlangt, welche konkrete eGK verwendet wurde.
        Für den Fall der Authentifikation mit einer elektronischen Identität liegt ohnehin kein eGK-Gültigkeitsdatum vor.
      """

// Unterscheidung von Haupt- und abrechnendem Kostenträger im PKV-Bereich nicht notwendig
* payor 1.. MS
  * ^short = "Kostenträger"
