// ================================================================================================
//
//   gemeinsame Metadaten
//
RuleSet: Meta
* ^status = #active
* ^experimental = false
* ^version = "1.1.0-dev"
* ^publisher = "gematik GmbH"
* ^contact.name = "gematik GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://fachportal.gematik.de/anwendungen/versichertenstammdaten-management"
* ^jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* ^date = 2026-05-20

RuleSet: Meta-CodeSystem
* ^status = #active // Caution: CodeSystems with status "draft" trigger a validation error
* ^experimental = false
* ^version = "1.1.0-dev"
* ^publisher = "gematik GmbH"
* ^contact.name = "gematik GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://fachportal.gematik.de/anwendungen/versichertenstammdaten-management"
* ^jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* ^jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* ^date = 2026-05-20

RuleSet: Meta-Inst
* status = #active
* experimental = false
* version = "1.1.0-dev"
* publisher = "gematik GmbH"
* contact.name = "gematik GmbH"
* contact.telecom.system = #url
* contact.telecom.value = "https://fachportal.gematik.de/anwendungen/versichertenstammdaten-management"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* date = 2026-05-20

// ================================================================================================
//
//   Landesangabe in Adresse (unprofilierte HL7 FHIR Core-Struktur)
//
RuleSet: Address-Country
* ^short = "Staat"
* ^definition = """
    Staatsangabe
  """
* ^comment = """
    Hier ist die Staatsangabe im Volltext (z.B. zur postalischen Adressierung) anzugeben.
  """
* extension
  * ^slicing.rules = #open
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "url"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "value.ofType(Coding)"
* extension contains $extCodedString named countryCode 0..1 MS and
                     VSDMISO3166Ergaenzung named countryCodeExt 0..1 MS and
                     VSDMLaenderkennzeichenAnlage8 named anlage8 0..1 MS
* extension[countryCode]
  * ^short = "Länderkennzeichen nach ISO 3166-1"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach ISO 3166-1.
    """
  * ^comment = """
      Diese Abbildung entspricht der auf EU-Ebene in Abstimmung befindlichen Profilierung zur [Kodierung der Landesangabe](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-Address-eu.html).
      Durch die Verwendung der internationalen Kodierung wird die interoperable Verwendung der Adressangabe erleichtert.
    """
* extension[countryCodeExt]
  * ^short = "Länderkennzeichen nach ISO 3166-1 (erweitert)"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach ISO 3166-1 (erweitert).
    """
  * ^comment = """
      In der DEÜV gibt es Ländercodes, die sich nicht auf den zum Zeitpunkt der Veröffentlichung bestehenden Stand der ISO 3166-1 abbilden lassen.
      Um eine Abbildung ohne Informationsverlust zu ermöglichen, wird mit dieser Erweiterung die Verwendung eines alternativen CodeSystem ermöglicht.
    """
* extension[anlage8]
  * ^short = "Länderkennzeichen nach DEÜV Anlage 8"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8.
    """
  * ^comment = """
      Diese Erweiterung dient zur Wahrung der Abwärtskompatibilität für Systeme, die den gemäß DEÜV kodierten Wert benötigen.
      Die Kodierung nach DEÜV ist im GKV-Bereich eine Pflichtangabe, im PKV-Bereich ist sie optional.
      Um diese Vorgabe einer konditionalen Prüfung umzusetzen, sind die Invarianten VSDMCoverageGKV-address-* an der VSDMCoverageGKV-Struktur hinterlegt.
      Diese Invarianten erzwingen die Angabe des Länderkennzeichens nach DEÜV, sobald auf die Ressource, die die Adresse enthält, aus einem GKV-Versicherungsverhältnis referenziert wird.
    """
* obeys country-code-iso-or-extension-1

// ================================================================================================
//
//   Landesangabe in Adresse (vorprofilierte AddressDeBasis ab Version 1.6.0)
//
RuleSet: AddressDeBasis-Country
* ^short = "Staat"
* ^definition = """
    Staatsangabe
  """
* ^comment = """
    Hier ist die Staatsangabe im Volltext (z.B. zur postalischen Adressierung) anzugeben.
  """
* extension contains VSDMISO3166Ergaenzung named countryCodeExt 0..1 MS and
                     VSDMLaenderkennzeichenAnlage8 named anlage8 0..1 MS
* extension[countryCode] 0..1 MS
  * ^short = "Länderkennzeichen nach ISO 3166-1"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach ISO 3166-1.
    """
  * ^comment = """
      Diese Abbildung entspricht der auf EU-Ebene in Abstimmung befindlichen Profilierung zur [Kodierung der Landesangabe](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-Address-eu.html).
      Durch die Verwendung der internationalen Kodierung wird die interoperable Verwendung der Adressangabe erleichtert.
      In der DEÜV gibt es allerdings Ländercodes, die sich nicht auf den zum Zeitpunkt der Veröffentlichung bestehenden Stand der ISO 3166-1 abbilden lassen.
      Um eine Abbildung ohne Informationsverlust zu ermöglichen, wird mit dem erweiterten ValueSet die Verwendung eines alternativen CodeSystem ermöglicht.
    """
* extension[countryCodeExt]
  * ^short = "Länderkennzeichen nach ISO 3166-1 (erweitert)"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach ISO 3166-1 (erweitert).
    """
  * ^comment = """
      In der DEÜV gibt es Ländercodes, die sich nicht auf den zum Zeitpunkt der Veröffentlichung bestehenden Stand der ISO 3166-1 abbilden lassen.
      Um eine Abbildung ohne Informationsverlust zu ermöglichen, wird mit dieser Erweiterung die Verwendung eines alternativen CodeSystem ermöglicht.
    """
* extension[anlage8]
  * ^short = "Länderkennzeichen nach DEÜV Anlage 8"
  * ^definition = """
      Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8.
    """
  * ^comment = """
      Diese Erweiterung dient zur Wahrung der Abwärtskompatibilität für Systeme, die den gemäß DEÜV kodierten Wert benötigen.
      Die Kodierung nach DEÜV ist im GKV-Bereich eine Pflichtangabe, im PKV-Bereich ist sie optional.
      Um diese Vorgabe einer konditionalen Prüfung umzusetzen, sind die Invarianten VSDMCoverageGKV-address-* an der VSDMCoverageGKV-Struktur hinterlegt.
      Diese Invarianten erzwingen die Angabe des Länderkennzeichens nach DEÜV, sobald auf die Ressource, die die Adresse enthält, aus einem GKV-Versicherungsverhältnis referenziert wird.
    """
* obeys country-code-iso-or-extension-1
