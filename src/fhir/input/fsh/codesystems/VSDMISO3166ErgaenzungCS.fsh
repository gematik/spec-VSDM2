CodeSystem: VSDMISO3166ErgaenzungCS
Title: "ergänzende Ländercodes"
Description: "ergänzende Ländercodes zu ISO 3166-1 im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta-CodeSystem
* ^caseSensitive = true
* ^content = #complete
* ^purpose = """
    Im VSDM 2.0 werden Länderkennungen in Adressdaten grundsätzlich nach ISO 3166-1 und für den GKV-Bereich zusätzlich nach DEÜV Anlage 8 kodiert.
    Die DEÜV spiegelt den Stand in den Quellsystemen, aus denen die VSDM 2.0-Fachdienste versorgt werden, wieder.
    In der DEÜV gibt es Ländercodes, die sich nicht auf den zum Zeitpunkt der Veröffentlichung bestehenden Stand der ISO 3166-1 abbilden lassen.
    Dieses CodeSystem enthält zusätzlichen Ländercodes, um eine verlustfreie Abbildung zu ermöglichen.
  """

* #XK "Kosovo, Republic of"
  * ^definition = """
      Die Republik Kosovo ist völkerrechtlich umstritten. 
      118 der 193 UNO-Mitglieder - darunter auch Deutschland - haben den Staat bisher anerkannt. 
      Die formellen Kriterien für die Zuteilung eines Codes durch die ISO sind seit 2009 erfüllt; bisher ist allerdings kein Code zugeteilt worden.
      Der Code XK entspricht der To Level-Domain .xk und wird in verschiedenen Wirtschaftsbereichen bereits verwendet.
      Die mit X beginnenden Codes sind inoffizielle, behelfmäßige Zuweisungen; der Namensbereich wird von der ISO nicht vergeben.
      Eine Kollision ist damit ausgeschlossen, allerdings wird der Code bei Vergabe eines offiziellen Codes ersetzt werden müssen.
    """
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Kosovo, Republik"

* #CP "Clipperton"
  * ^definition = """
      Clipperton hat seit 1. Januar 2008 den ISO-3166-2-Code FR-CP. 
      Außerdem hat Clipperton einen ausnahmsweise reservierten Code ISO 3166-1:CP. 
      Dieser Code existiert nur aufgrund der Verwendung in anderen Standards und sollte nicht für eine Kodierung nach ISO 3166-1 verwendet werden.
      Da die Clipperton-Insel unbewohnt ist, ist die Praxisrelevanz für VSDM 2.0 gering; der Code dient lediglich der vollständigen Abdeckung durch die ConceptMap.
    """
  * ^designation[+].language = #de-DE
  * ^designation[=].value = "Clipperton"

