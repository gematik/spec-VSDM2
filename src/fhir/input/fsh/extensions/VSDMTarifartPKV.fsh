Extension: VSDMTarifartPKV
Context: Coverage
Title: "PKV-Tarifart"
Description: "Tarifart des PKV-Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* .
  * ^short = "PKV-Tarifart"
  * ^definition = """
      Tarifart des PKV-Versicherten, inklusive Anwendung eines PKV-verbandseinheitlichen Tarifs mit Besonderheiten bezüglich der Leistungen und privatärztliche Abrechnungen.
    """

* value[x] only Coding
* value[x] from $vsTarifartPKV (required)
  * system 1.. MS
  * system = $csTarifartPKV (exactly)
  * version 1.. MS
  * version = "1.01" (exactly) // Version($csTarifartPKV)
  * code 1.. MS