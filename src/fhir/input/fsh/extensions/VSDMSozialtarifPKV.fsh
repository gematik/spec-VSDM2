Extension: VSDMSozialtarifPKV
Context: Coverage
Title: "PKV-Sozialtarif"
Description: "Anwendung eines PKV-verbandseinheitlichen Tarifs im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "PKV-Sozialtarif"
  * ^definition = """
      Anwendung eines PKV-verbandseinheitlichen Tarifs mit Besonderheiten bezüglich der Leistungen und privatärztliche Abrechnungen.
    """

* value[x] only Coding
* value[x] from VSDMSozialtarifPKVVS (required)
  * system 1..
  * system = Canonical(VSDMSozialtarifPKVCS)
  * code 1..
