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
* value[x] from $vsVersichertenartPKV (required)
  * system 1.. MS
  * system = $csVersichertenartPKV (exactly)
  * version 1.. MS
  * version = "1.6.0" (exactly) // Version($csVersichertenartPKV)
  * code 1.. MS