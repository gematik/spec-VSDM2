Profile: VSDMOperationOutcome
Parent: OperationOutcome
Title: "Fehlermeldung des VSDM Resource Servers"
Description: "Strukturierte Fehlermeldung im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Fehlermeldung des VSDM Resource Servers"
  * ^definition = """
      Strukturierte Fehlermeldung im Versichertenstammdatenmanagement (VSDM) 2.0
    """

* text 1..1 MS
  * ^short = "Fehlerbeschreibung zur Anzeige"
  * ^definition = """
      Dieser Beschreibungstext wird vom Clientsystem zur Anzeige gebracht, wenn keine anderweitige Fehlerbehandlung auf Grundlage der strukturierten Informationen möglich ist.
      Die Beschreibung soll so formuliert sein, dass sie für den Anwender des Clientsystems verständlich ist.
    """
  * ^comment = """
      Der Beschreibungstext darf identisch zum Anzeigetext in issue.details.text sein.
    """
  * status = #generated 
  * div MS

* issue MS
  * ^short = "Strukturierte Fehlerbeschreibung"
  * ^definition = """
      Diese strukturierte Fehlerbeschreibung kann zur Behandlung innerhalb des Clientsystems ausgewertet werden.
    """
  * severity MS 
    * ^short = "Schweregrad der Fehlermeldung"
    * ^definition = """
        Beschreibt die Kritikalität (den Schweregrad) der Fehlermeldung mit Bezug auf die Ausführung der gesamten Anfrage.
      """
    * ^comment = """
        Für VSDM-spezifische Fehlermeldungen kann der Schweregrad anhand der ConceptMap VSDMErrorcodeIssueSeverity abgeleitet werden.
      """
  * code MS
    * ^short = "Klassifizierung der Fehlermeldung"
    * ^definition = """
        Ordnet die Fehlermeldung einem standardisierten Fehlertyp zu.
      """
    * ^comment = """
        Für VSDM-spezifische Fehlermeldungen kann der Schweregrad anhand der ConceptMap VSDMErrorcodeIssueType abgeleitet werden.
      """
  * details 1..1
    * ^short = "Fehlerbeschreibung"
    * ^definition = """
        Diese Struktur beschreibt die aufgetretene Fehlersituation.
      """
    * coding 1..1
    * coding from VSDMErrorcodeVS (required)
      * ^short = "Fehlercode aus den Wertetabellen gemäß Spezifikation"
      * ^definition = """
          Es sind grundsätzlich die VSDM-spezifischen Fehlercodes aus dem CodeSystem VSDMErrorcodeCS zu verwenden.
          Falls keiner der Fehlercodes fachlich zutreffend ist, kann ein allgemeiner Fehlercode aus den Standard-FHIR-CodeSystemen verwendet werden.
        """
      * system 1..1 MS
      * code 1..1 MS
      * display 
        * ^short = "Meldungstext laut Katalog"
        * ^definition = """
            Dieses Feld nimmt den unverarbeiteten Meldungstext gemäß CodeSystem/ValueSet auf.
          """
    * text 1..1 MS
      * ^short = "Aufbereiteter Meldungstext"
      * ^definition = """
          Dieses Feld nimmt den aufbereiteten Meldungstext aus dem CodeSystem/ValueSet mit ersetzten Platzhaltern auf.
        """
  * diagnostics 1..1 MS
    * ^short = "Diagnostik- und Lösungsmöglichkeiten"
    * ^definition = """
        Dieses Feld liefert Hinweise zur Fehlerbehebung durch das Clientsystem in Anlehnung an Anforderung A_27014. 
        Dieser Text richtet sich primär an Entwickler und technische Betreuer des Clientsystems und soll dem Anwender in der Regel nicht zur Anzeige gebracht werden.
      """
    * ^comment = """
        Dieses Feld darf keine technischen Interna des Fachdienstes (stack traces o.ä.) enthalten.
      """