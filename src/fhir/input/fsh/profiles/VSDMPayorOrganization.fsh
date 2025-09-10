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
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains IKNR 1..1 MS
* identifier[IKNR] only IdentifierIknr 
  * ^short = "Institutionskennzeichen (IKNR)"
  * ^definition = """
      Eindeutige Identifikation des Kostenträgers über das Institutionskennzeichen (IKNR).
    """

// Zuordnung aus Versicherungsdaten -> [Abrechnender]Kostentraeger -> Kostentraeger
* name 1..1 MS
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
      Hinweise zur Abbildung von Adressen und Beispiele siehe [Adresse](https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Datentypen-Address.html) im deutschen Basisprofil.
    """
  * country
    * insert Address-Country
