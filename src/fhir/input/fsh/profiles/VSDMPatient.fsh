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
  * ^definition = """
      Es wird der zehnstellig (unveränderliche) Teil der KVNR verwendet. 
      Zur eindeutigen Identifikation muss genau eine KVNR angegeben werden.
    """
  * ^comment = """
      Hinweise zur Verwendung und Beispiele siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-LebenslangeKrankenversichertennummer10-stelligeKVID-Identifier?version=current.
    """
  * ^requirements = "Die KVNR identifiziert den Versicherten, auf den sich die bereitgestellten Stammdaten beziehen."

// Zuordnung aus Versichertendaten -> Versicherter -> Geburtsdatum
* birthDate
  * ^short = "Geburtsdatum"
  * ^definition = """
      Das Geburtsdatum des Versicherten ist in den VSD eine Pflichtangabe. 
      Partielle Datumsangaben sind allerdings zulässig.
    """
  * ^comment = """
      Hinweise insbesondere zur Angabe unvollständiger Datumswerte siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Geburtsdatum.
    """

// Zuordnung aus Versichertendaten -> Versicherter -> Nachname, Vorsatzwort und Namenszusatz
* name[Name].family
  * ^comment = """
      Hinweise zur Bildung des gesamten Namenamens siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name.
      Verwender müssen mindestens 87 Zeichen verarbeiten können.
    """
    // 45 Zeichen Nachname + 20 Zeichen Vorsatzwort + 20 Zeichen Namenszusatz + max. 2 Leerzeichen = 87 Zeichen

// Zuordnung aus Versichertendaten -> Versicherter -> Namenszusatz
* name[Name].family.extension[namenszusatz]
  * ^comment = """
      Hinweise zum Umgang mit dieser Erweiterung siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name.
      Eine Tabelle der gültigen Namenszusätze findet sich in Anlage 7 zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp.
      Verwender müssen mindestens 20 Zeichen verarbeiten können.
    """
    // TODO zu diskutieren: Wertetabelle ist als CodeSystem im deutschen Basisprofil vorhanden - Binding?

// Zuordnung aus Versichertendaten -> Versicherter -> Nachname
* name[Name].family.extension[nachname]
  * ^short = "Nachname ohne Vorsatzwort und Zusätze"
  * ^definition = """
      Diese Erweiterung kann den Nachnamen ohne Vorsatzworte und Zusätze aufnehmen.
      Wenn weder Vorsatzworte noch Namenszusätze existieren, kann die Erweiterung entfallen.
    """
  * ^comment = """
      Hinweise zum Umgang mit dieser Erweiterung siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name.
      Verwender müssen mindestens 45 Zeichen verarbeiten können.
    """

// Zuordnung aus Versichertendaten -> Versicherter -> Vorsatzwort
* name[Name].family.extension[vorsatzwort]
  * ^short = "Vorsatzwort"
  * ^definition = """
      Vorsatzwort zum Nachnamen des Patienten (z.B. "van" in "Ludwig van Beethoven").
    """
  * ^comment = """
      Hinweise zum Umgang mit dieser Erweiterung siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name.
      Eine Tabelle der gültigen Vorsatzworte findet sich in Anlage 6 zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp.
      Verwender müssen mindestens 20 Zeichen verarbeiten können.
    """
    // TODO zu diskutieren: Wertetabelle ist als CodeSystem im deutschen Basisprofil vorhanden - Binding?

// Zuordnung aus Versichertendaten -> Versicherter -> Vorname
* name[Name].given
  * ^comment = """
      Mehrere Vornamen können durch Leerzeichen oder Bindestrich getrennt in einem Wert angegeben werden. 
      Von der Wiederholung des given-Elemente SOLL kein Gebrauch gemacht werden; es wird zur besseren Interoperabilität allerdings nicht technisch verboten.
      Verwender müssen mindestens 45 Zeichen verarbeiten können.
    """

// Zuordnung aus Versichertendaten -> Versicherter -> Titel
* name[Name].prefix
  * ^definition = """
      Namensteile vor dem Vornamen, z.B. akademischer Titel.
      Wenn dieses Attribut zur Angabe des akademischen Titels verwendet wird, ist die Erweiterung prefix-qualifier mit dem Wert AC (academic) verpflichtend anzugeben.
      Mehrere Titel werden durch Leerzeichen getrennt angegeben. 
      Verwender müssen mindestens 20 Zeichen verarbeiten können.
    """
  * ^comment = """
      Beispiele zur Verwendung siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Name.
    """
  * extension[prefix-qualifier]
    * ^short = "Art des Namenspräfix"
    * ^definition = """
        Kodierte Angabe der Art des Namenspräfix zur technischen Unterscheidung zwischen verschieden Präfixen wie akademischem Titel.
        Achtung: Für das Vorsatzwort ist das Attribut family.extension[vorsatzwort] zu verwenden.
        Für akademische Titel ist verpflichtend die Kennzeichnung AC (academic) zu verwenden.
      """
    * ^comment = """
        Beispiele zur Verwendung siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Name.
      """

// Zuordnung aus Versichertendaten -> Versicherter -> Geschlecht
* gender 1..1
  * ^short = "Administrative Geschlechtsangabe (FHIR-Kodierung)"
  * ^definition = """
      Administrative Geschlechtsangabe gemäß den Unterlagen des Kostenträgers, kodiert nach FHIR-Standard.
    """
  * ^comment = """
      Hinweise zur Verwendung dieses Attributs und der Erweiterung siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Geschlecht.
    """
  * extension[other-amtlich]
    * ^short = "Administrative Geschlechtsangabe (deutsche Kodierung)"
    * ^definition = """
        Administrative Geschlechtsangabe gemäß den Unterlagen des Kostenträgers, kodiert nach Wertetabelle zur Unterscheidung zwischen "divers" und "unbestimmt".
      """
    * ^comment = """
        Hinweise zur Verwendung dieses Attributs und der Erweiterung siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Geschlecht.
        Nur bei FHIR-Kodierung "other" zu verwenden (vgl. Constraint pat-de-1).
      """

// -----

* address only address-de-basis










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
* gender = #male
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

