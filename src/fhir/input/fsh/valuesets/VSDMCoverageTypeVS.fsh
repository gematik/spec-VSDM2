ValueSet: VSDMCoverageGKVTypeVS
Title: "Versicherungsart"
Description: "Versicherungsart im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta
* ^purpose = """
    Dieses ValueSet stellt eine Einschränkung von [VersicherungsartDeBasisVS](http://fhir.de/ValueSet/versicherungsart-de-basis) auf die in VSDM 2.0 unterstützten Werte dar.
  """

* include $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* include $csVersicherungsart#PKV "private Krankenversicherung"
