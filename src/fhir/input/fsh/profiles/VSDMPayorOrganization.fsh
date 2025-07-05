Profile: VSDMPayorOrganization
Parent: Organization
Title: "Kostenträger"
Description: "Angaben zum Kostenträger im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Kostenträger"
  * ^definition = """
      Angaben zum Kostenträger im Versichertenstammdatenmanagement (VSDM) 2.0
    """
  * ^comment = """
      Die Struktur wird unabhängig von der Versicherungsart (GKV/PKV) definiert.
    """

// Zuordnung aus Versicherungsdaten -> [Abrechnender]Kostentraeger -> Kostentraegerkennung
* identifier 
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = system
  * ^slicing.rules = #open
* identifier contains IKNR 1..1
* identifier[IKNR] only IdentifierIknr 
  * ^short = "Institutionskennzeichen (IKNR)"
  * ^definition = """
      Eindeutige Identifikation des Kostenträgers über das Institutionskennzeichen (IKNR).
    """

// Typ zur Unterscheidung zwischen Hauptkostenträger und abrechnendem Kostenträger
* type 
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.system
  * ^slicing.rules = #open
* type contains KostentraegerTyp 1..1
* type[KostentraegerTyp]
  * ^short = "Kostenträgertyp"
  * ^definition = """
      Wird zur Unterscheidung zwischen Haupt-Kostenträger (ins) und abrechnendem Kostenträger (pay) verwendet.
    """
  * coding from VSDMKostentraegerTypVS (required)
    * system = $organizationtype
    * code 1..1

// Zuordnung aus Versicherungsdaten -> [Abrechnender]Kostentraeger -> Kostentraeger
* name 1..1 
  * ^short = "Name des Kostenträgers"
  * ^definition = """
      Name des Kostenträgers.
      Verwender müssen mindestens 45 Zeichen verarbeiten können.
    """

// Zuordnung aus Versicherungsdaten -> [Abrechnender]Kostentraeger -> Kostentraegerlaendercode
* address
  * ^short = "Adresse des Kostenträgers"
  * ^definition = """
      Adresse des Kostenträgers. 
      Die meisten Adressfelder sind optional; verpflichtend ist die Angabe des Staats (Ländercode).
      Hinweise zur Abbildung von Adressen und Beispiele siehe https://ig.fhir.de/basisprofile-de/1.0.0-RC1/Datentypen-Address.html.
    """
  * country
    * ^short = "Staat"
    * ^definition = """
        Staatsangabe kodiert nach ISO-3166-1-2.
      """
    * ^comment = """
        Die Kodierung ist durch den FHIR-Standard empfohlen, aber nicht erzwungen. 
        Durch die Verwendung der internationalen Kodierung wird die interoperable Verwendung der Adressangabe erleichtert.
      """
    * extension contains VSDMLaenderkennzeichen named Laenderkennzeichen 1..1
    * extension[Laenderkennzeichen] 
      * ^short = "Länderkennzeichen nach DEÜV Anlage 8"
      * ^definition = """
          Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8. 
        """
      * ^comment = """
          Diese Erweiterung dient zur Wahrung der Abwärtskompatibilität für Systeme, die den gemäß DEÜV kodierten Wert benötigen.
        """
