Extension: VSDMLaenderkennzeichen
Context: Address.country
Title: "Länderkennzeichen nach DEÜV Anlage 8"
Description: "Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Länderkennzeichen nach DEÜV Anlage 8"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8.
      Diese Erweiterung ergänzt die Landesangabe nach internationalem Standard ISO3166-1-2.
    """

* value[x] only Coding
* value[x] from $vsAnlage8Laenderkennzeichen (required)
  * system 1..
  * system = $csAnlage8Laenderkennzeichen
  * code 1..
