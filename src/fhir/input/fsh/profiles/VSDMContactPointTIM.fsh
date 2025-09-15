Profile: VSDMContactPointTIM
Parent: ContactPoint
Title: "TI-Messenger-ID"
Description: "Matrix-ID (MXID) für TI-Messenger im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "TI-Messenger-ID"
  * ^definition = """
      Matrix-ID (MXID) für TI-Messenger im Versichertenstammdatenmanagement (VSDM) 2.0.
    """

* system = $csContactPointSystem#url (exactly)
* value 1..1 MS
* value obeys VSDMContactPointTIM-mxid-1

Invariant: VSDMContactPointTIM-mxid-1
Description: "Die TI-Messenger-ID muss eine [gültige MXID](https://spec.matrix.org/latest/appendices/#user-identifiers) sein."
Expression: "matches('matrix:@[a-z0-9\\\\-\\\\._=\\/\\\\+]{1,}:[a-zA-Z0-9\\\\-\\\\.]{1,255}(:[0-9+]{1,5})?') and length() <= 262" // 262 = 255 + length("matrix:")
Severity: #error
