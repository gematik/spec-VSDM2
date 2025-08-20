ValueSet: VSDMCoverageTypeVS
Title: "Versicherungsart"
Description: "Dieses ValueSet stellt eine Einschränkung von [VersicherungsartDeBasisVS](http://fhir.de/ValueSet/versicherungsart-de-basis) auf die in VSDM 2.0 unterstützten Werte dar."

* insert Meta

* include $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* include $csVersicherungsart#PKV "private Krankenversicherung"
