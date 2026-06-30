Profile: VSDMCoverageGKV
Parent: VSDMCoverageGKVBase
Title: "Versicherungsdaten GKV"
Description: "Angaben zum GKV-Versicherungsverhältnis im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen.
// Die Extensions sind in der Reihenfolge der Nennung der Attribute im logischen Modell aufgeführt.

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* .
  * ^short = "Versicherungsdaten GKV"
  * ^definition = """
      Angaben zum GKV-Versicherungsverhältnis im Versichertenstammdatenmanagement (VSDM) 2.0.
      Dieses Profil bildet die im VSDM 2.0-Bundle zu verwendenden Inhalte ab.
    """
  * ^comment = """
      Zur Harmonisierung der Strukturen mit dem deutschen Basisprofil werden getrennte Profile für GKV und PKV gebildet.
    """

// Invarianten auf Strukturebene
* obeys VSDMCoverageGKV-gender-1           // Pflichtangabe Geschlecht
* obeys VSDMCoverageGKV-gender-2           // Geschlechtsangabe 'unknown' verboten
* obeys VSDMCoverageGKV-address-1          // Pflichtangabe Länderkennzeichen nach DEÜV im Patient
* obeys VSDMCoverageGKV-address-2          // Pflichtangabe Länderkennzeichen nach DEÜV im Kostenträger

// Bezug zum Versicherten
* beneficiary MS
* beneficiary only Reference(VSDMPatient)

// Zuordnung aus Versicherungsdaten -> Kostentraeger und AbrechnenderKostentraeger
* payor only Reference(VSDMPayorOrganization)
* payor 1..2 MS
  * obeys VSDMCoverageGKV-payor-1
  * obeys VSDMCoverageGKV-payor-2
  * reference 1..1 MS
  * identifier 1..1 MS
  * display 1..1 MS

// ------------------------------------------------------------------------------------------------------------------------------------------------------------

Invariant: VSDMCoverageGKV-gender-1
Description: "Für GKV-Versicherte ist die Angabe des Geschlechts erforderlich."
Expression: "beneficiary.resolve().gender.exists()"
Severity: #error

Invariant: VSDMCoverageGKV-gender-2
Description: "Für GKV-Versicherte ist die Geschlechtsangabe 'unknown' nicht erlaubt."
Expression: "beneficiary.resolve().gender != 'unknown'"
Severity: #error

Invariant: VSDMCoverageGKV-address-1
Description: "Für GKV-Versicherte ist die Angabe des Länderkennzeichens nach DEÜV Anlage 8 in Adressen des Patienten erforderlich."
Expression: "beneficiary.resolve().address.all(country.extension('https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMLaenderkennzeichenAnlage8').exists())"
Severity: #error

Invariant: VSDMCoverageGKV-address-2
Description: "Für GKV-Versicherte ist die Angabe des Länderkennzeichens nach DEÜV Anlage 8 in Adressen des Kostenträgers erforderlich."
Expression: "payor.all(resolve().address.all(country.extension('https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMLaenderkennzeichenAnlage8').exists()))"
Severity: #error

Invariant: VSDMCoverageGKV-payor-1
Description: "Die IK-Nummer in der Kostenträger-Referenz muss mit der IK-Nummer in der referenzierten Organisation übereinstimmen."
Expression: "resolve().identifier.exists(value = $this.value)"
Severity: #error

Invariant: VSDMCoverageGKV-payor-2
Description: "Der Anzeigetext der Kostenträger-Referenz muss mit dem Anzeigenamen der referenzierten Organisation übereinstimmen."
Expression: "resolve().name = $this.display"
Severity: #error
