Extension: VSDMLaenderkennzeichenAnlage8
Context: Address.country
Title: "Land (Anlage 8 DEÜV)"
Description: "Länderkennzeichen nach DEÜV Anlage 8"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* .
  * ^short = "Länderkennzeichen nach DEÜV Anlage 8"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8.
    """
  * ^comment = """
      Diese Erweiterung dient zur Wahrung der Abwärtskompatibilität für Systeme, die den gemäß DEÜV kodierten Wert benötigen.
      Die Kodierung nach DEÜV ist im GKV-Bereich eine Pflichtangabe, im PKV-Bereich ist sie optional.
    """

* value[x] only Coding
* value[x] from $vsAnlage8Laenderkennzeichen (required)
  * system 1..
  * system = $csAnlage8Laenderkennzeichen (exactly)
  * code 1..
