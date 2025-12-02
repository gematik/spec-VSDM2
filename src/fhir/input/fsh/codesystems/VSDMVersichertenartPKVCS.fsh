CodeSystem: VSDMVersichertenartPKVCS
Title: "Versichertenart (PKV)"
Description: "PKV-Versichertenart im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta-CodeSystem
* ^caseSensitive = true
* ^content = #complete

// Dieses CodeSystem wird absehbar durch ein identisches CodeSystem aus dem deutschen Basisprofil bzw. dem zugehörigen Terminologiepaket ersetzt.
// (vgl. https://github.com/hl7germany/basisprofil-de-r4/pull/667)
// Das "neue" CodeSystem wird aber erst nach dem geplanten Veröffentlichungsdatum zur Verfügung stehen.
// Um einen breaking change zu vermeiden, erhält dieses CodeSystem wie im TC FHIR am 27.11.2025 besprochen jetzt schon die finale canonical URL.
// Nach Veröffentlichung des neuen CodeSystem (voraussichtlich in Q1/2026) und Aktualisierung der Paketabhängigkeiten kann dieses CodeSystem dann entfallen.
* ^url = "http://fhir.de/ValueSet/pkv/Versichertenart"

* #VN "Versicherungsnehmer"
  * ^definition = """
      Die behandelte Person ist selbst der Versicherungsnehmer.
    """
* #VP "versicherte Person"
  * ^definition = """
      Die behandelte Person ist nicht selbst der Versicherungsnehmer.
    """
