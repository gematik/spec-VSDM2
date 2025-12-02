CodeSystem: VSDMRuhenderLeistungsanspruchArtCS
Title: "Art des ruhenden Leistungsanspruchs"
Description: "Art des ruhenden Leistungsanspruchs im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta-CodeSystem
* ^caseSensitive = true // hier nicht kritisch, aber vermeidet Meldung in der Validierung
* ^content = #complete
* ^purpose = """
    Das Ruhen des Leistungsanspruchs im Bereich der GKV wird durch § 16 SGB V geregelt. 
    Nach § 19 Abs. 3 BMV-Ä ist der Leistungsanspruch von Versicherten, die ihrer Verpflichtung zur Beitragszahlung nicht nachkommen, eingeschränkt (§ 16 Abs. 3a SGB V). 
    Die verbleibenden Absätze des § 16 SGB V legen die Rahmenbedingungen für ein vollständiges Ruhen des Leistungsanspruchs fest.
    Die von diesem CodeSystem definierten Werte wurden durch die gematik zur Einführung von VSDM 1 im Jahr 2011 festgelegt und werden hier für die Verwendung in FHIR-Profilen zugänglich gemacht.
  """

// Dieses CodeSystem wird absehbar durch ein identisches CodeSystem aus dem deutschen Basisprofil bzw. dem zugehörigen Terminologiepaket ersetzt.
// (vgl. https://github.com/hl7germany/basisprofil-de-r4/pull/666)
// Das "neue" CodeSystem wird aber erst nach dem geplanten Veröffentlichungsdatum zur Verfügung stehen.
// Um einen breaking change zu vermeiden, erhält dieses CodeSystem wie im TC FHIR am 27.11.2025 besprochen jetzt schon die finale canonical URL.
// Nach Veröffentlichung des neuen CodeSystem (voraussichtlich in Q1/2026) und Aktualisierung der Paketabhängigkeiten kann dieses CodeSystem dann entfallen.
* ^url = "http://fhir.de/CodeSystem/gkv/RuhenderLeistungsanspruchGKV"

* #1 "vollständig"
* #2 "eingeschränkt"
