Extension: VSDMVersichertenartPKV
Context: Coverage
Title: "Versichertenart (PKV)"
Description: "Versichertenart (PKV) im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Versichertenart"
  * ^definition = """
      Versichertenart (PKV) im Versichertenstammdatenmanagement (VSDM) 2.0.
    """
  * ^comment = """
      Analogie von [ExtensionGkvVersichertenart](http://fhir.de/StructureDefinition/gkv/versichertenart) aus dem deutschen Basisprofil zur Aufnahme der PKV-Versichertenarten.
    """

* value[x] only Coding
* value[x] from VSDMVersichertenartPKVVS (required)
  * system 1..
  * code 1..