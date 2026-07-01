Extension: VSDMISO3166Ergaenzung
Context: Address.country
Title: "ergänzende Ländercodes"
Description: "ergänzende Ländercodes zu ISO 3166-1 im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* .
  * ^short = "ergänzende Ländercodes"
  * ^definition = """
      ergänzende Ländercodes zu ISO 3166-1 im Versichertenstammdatenmanagement (VSDM) 2.0
    """
  * ^comment = """
      Im VSDM 2.0 werden Länderkennungen in Adressdaten grundsätzlich nach ISO 3166-1 und für den GKV-Bereich zusätzlich nach DEÜV Anlage 8 kodiert.
      Die DEÜV spiegelt den Stand in den Quellsystemen, aus denen die VSDM 2.0-Fachdienste versorgt werden, wieder.
      In der DEÜV gibt es Ländercodes, die sich nicht auf den zum Zeitpunkt der Veröffentlichung bestehenden Stand der ISO 3166-1 abbilden lassen.
      Dieses CodeSystem enthält zusätzlichen Ländercodes, um eine verlustfreie Abbildung zu ermöglichen.
    """

* value[x] only Coding
* value[x] from VSDMISO3166ErgaenzungVS (required)
  * system 1..
  * system = Canonical(VSDMISO3166ErgaenzungCS) (exactly)
  * version 1.. MS
  * version = "1.0.2-dev" (exactly)
  * code 1.. MS
