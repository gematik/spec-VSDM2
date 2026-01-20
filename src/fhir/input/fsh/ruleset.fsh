RuleSet: Meta
* ^status = #draft
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "gematik GmbH"
* ^date = "2023-12-31" // TODO Datum vor Freigabe setzen

RuleSet: Meta-CodeSystem
* ^status = #active // CodeSystems with status "draft" trigger a validation error
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "gematik GmbH"
* ^date = "2023-12-31" // TODO Datum vor Freigabe setzen

RuleSet: Meta-Inst
* status = #draft
* experimental = false
* version = "1.0.0"
* publisher = "gematik GmbH"
* date = "2023-12-31" // TODO Datum vor Freigabe setzen

// Landesangabe in Adresse
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
  * ^slicing.discriminator[+].type = #pattern
  * ^slicing.discriminator[=].path = "value.ofType(Coding)"
* extension contains $extCodedString named countryCode 1..1 MS and
                     $extCodedString named anlage8 0..1 MS
* extension[countryCode]
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
  * valueCoding from VSDMISO3166VS (required)
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
  * valueCoding from $vsAnlage8Laenderkennzeichen (required)
  * valueCoding.system = $csAnlage8Laenderkennzeichen (exactly)
