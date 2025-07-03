Profile: VSDMPatient
Parent: TIPatient
Title: "Versicherter im VSDM"
Description: "Der VSDMPatient bildet einen Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0 ab."

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. Ausnahme: 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Versicherter im VSDM"
  * ^definition = "Der VSDMPatient bildet einen Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0 ab."

* meta 1..1
* meta.profile 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient" (exactly)

// Zuordnung aus Versichertendaten -> Versicherter -> VersichertenID
* identifier[KVNR] 1..1
  * ^short = "Versichertennummer (KVNR)"
  * ^definition = "Es wird der zehnstellig (unveränderliche) Teil der KVNR verwendet. Zur eindeutigen Identifikation muss genau eine KVNR angegeben werden."
  * ^comment = "Hinweise zur Verwendung und Beispiele siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-LebenslangeKrankenversichertennummer10-stelligeKVID-Identifier?version=current."
  * ^requirements = "Die KVNR identifiziert den Versicherten, auf den sich die bereitgestellten Stammdaten beziehen."

// Zuordnung aus Versichertendaten -> Versicherter -> Geburtsdatum
* birthDate
  * ^short = "Geburtsdatum"
  * ^definition = "Das Geburtsdatum des Versicherten ist in den VSD eine Pflichtangabe. Partielle Datumsangaben sind allerdings zulässig."
  * ^comment = "Hinweise insbesondere zur Angabe unvollständiger Datumswerte siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Geburtsdatum."

// Zuordnung aus Versichertendaten -> Versicherter -> Vorname
* name[Name].given
  * ^comment = """
      Mehrere Vornamen können durch Leerzeichen oder Bindestrich getrennt in einem Wert angegeben werden. 
      Von der Wiederholung des given-Elemente SOLL kein Gebrauch gemacht werden; es wird zur besseren Interoperabilität allerdings nicht technisch verboten.
      Verwender müssen mindestens 45 Zeichen verarbeiten können.
    """

// -----

* address only address-de-basis

* name[Name].family.extension[nachname]
  * ^comment = "Gibt den Nachnamen der Person an"

// TODO: Slicing Testen mit Beipsielinstanz
* telecom
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.description = "Slices for Patient contact information"
  * ^slicing.ordered = false

* telecom contains ti-messenger 1..1 MS

* telecom[ti-messenger] only VSDMContactPointTIMessenger









Instance: VSDMPatientSample
InstanceOf: VSDMPatient
Title: "Patient for VSDM 2"
Usage: #example
* id = "437f2555-2396-4c64-a656-e9553161ca3c"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"

* identifier[KVNR].value = "T024791905"

* name[Name].family = "Königstein"
* name[Name].family.extension[nachname].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[Name].family.extension[nachname].valueString = "Königstein"
* name[Name].given = "Ludger"
* birthDate = "1935-06-22"
* address.type = #both
* address.line = "Blumenweg 14"
* address.line.extension[0][Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=][Hausnummer].valueString = "14"
* address.line.extension[+][Strasse].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=][Strasse].valueString = "Blumenweg"
* address.city = "Esens"
* address.postalCode = "26427"
* address.country = $cs-iso3166-1-2#DE
* telecom = ContactPointAOKMXID

