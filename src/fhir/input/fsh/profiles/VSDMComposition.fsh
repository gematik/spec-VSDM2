Profile: VSDMComposition
Parent: Composition
Title: "Composition eines VSDM 2.0 Document Bundle"
Description: "Composition zur Beschreibung eines Document Bundle im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Composition eines VSDM 2.0 Document Bundle"
  * ^definition = """
      Composition zur Beschreibung eines Document Bundle im Versichertenstammdatenmanagement (VSDM) 2.0#
    """

// TODO zu diskutieren: Weil wenn wir nichts signieren möchten/müssen, bringt uns die Document-Metapher mit der Composition inhaltlich keinen Mehrwert, sondern nur Mehraufwand. Können / sollen wir auf ein collection-Bundle ohne Composition wechseln?

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* status = #final (exactly)
* status MS
* type MS
* type.coding 1..1
* type.coding = $csLOINC#55188-7 "Patient data Document"
* date MS
* author.identifier 1..1
* author.identifier only IdentifierIknr

