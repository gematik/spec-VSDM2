Profile: VSDMPatient
Parent: TIPatient
Title: "Versicherter"
Description: "Angaben zum Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen. 

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Versicherter im VSDM"
  * ^definition = """
      Der VSDMPatient bildet einen Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0 ab.
      Der VSDMPatient ist vom zentralen TIPatient abgeleitet. 
      Der Ressource Server des VSDM stellt allerdings keinen FHIR Data Service im Sinne des Implementation Guide TI Common dar, so dass die meisten Anforderungen dieses IG auf den VSDMPatient nicht zutreffen.
      Dieser Sachverhalt wird in einer Folgeversion des IG klargestellt.
    """

* id
  * ^comment = """
      HINWEIS: Das Attribut id ist aktuell durch das übergeordneter Profil TIPatient als "must support" gekennzeichnet.
      Diese Kennzeichnung wird in einer Folgeversion aufgehoben.
    """
* meta
  * ^comment = """
      HINWEIS: Das Attribut meta ist aktuell durch das übergeordneter Profil TIPatient als "must support" gekennzeichnet.
      Diese Kennzeichnung wird in einer Folgeversion aufgehoben.
    """
  * versionId
    * ^comment = """
        HINWEIS: Das Attribut meta.versionId ist aktuell durch das übergeordneter Profil TIPatient als "must support" gekennzeichnet.
        Diese Kennzeichnung wird in einer Folgeversion aufgehoben.
      """
  * lastUpdated
    * ^comment = """
        HINWEIS: Das Attribut meta.versionId ist aktuell durch das übergeordneter Profil TIPatient als "must support" gekennzeichnet.
        Diese Kennzeichnung wird in einer Folgeversion aufgehoben.
      """
    // TODO Falls das Bundle von Document auf Collection umgestellt wird, können wir lastUpdated als Datum der letzten inhaltlichen Änderung / Aktualisierung verwenden.

// Zuordnung aus Versichertendaten -> Versicherter -> VersichertenID
* identifier[KVNR] 1..1 // MS bereits durch TIPatient vorgegeben
  * ^short = "Versichertennummer (KVNR)"
  * ^definition = """
      Es wird der zehnstellig (unveränderliche) Teil der KVNR verwendet. 
      Zur eindeutigen Identifikation muss genau eine KVNR angegeben werden.
    """
  * ^comment = """
      Hinweise zur Verwendung und Beispiele siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-LebenslangeKrankenversichertennummer10-stelligeKVID-Identifier?version=current.
    """
  * ^requirements = "Die KVNR identifiziert den Versicherten, auf den sich die bereitgestellten Stammdaten beziehen."

// Bildung aus den in der Folge spezifizierten Einzelwerten
* name[Name].text
  * ^short = "vollständiger zusammengesetzter Name"
  * ^definition = """
      Zur besseren Lesbarkeit sowie zur leichteren Verarbeitung für Systeme, die die einzelnen Namensbestandteile nicht getrennt benötigen, SOLL dieses Attribut den gesamten Namen mit Titel, Vorsatzwort und Namenszusätzen enthalten.
      Die Bildungsregel ist dabei [Titel] [Vornamen] [Namenszusätze] [Vorsatzworte] [Nachnamen].
    """
  * ^comment = """
      Hinweise und Beispiele siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Name
    """

// Zuordnung aus Versichertendaten -> Versicherter -> Nachname, Vorsatzwort und Namenszusatz
* name[Name].family // 1..1 MS bereits durch TIPatient vorgegeben
  * ^comment = """
      Hinweise zur Bildung des gesamten Namenamens siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name.
      Verwender müssen mindestens 87 Zeichen verarbeiten können.
    """
    // 45 Zeichen Nachname + 20 Zeichen Vorsatzwort + 20 Zeichen Namenszusatz + max. 2 Leerzeichen = 87 Zeichen

// Zuordnung aus Versichertendaten -> Versicherter -> Namenszusatz
* name[Name].family.extension[namenszusatz] // MS bereits durch TIPatient vorgegeben
  * ^comment = """
      Hinweise zum Umgang mit dieser Erweiterung siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name.
      Eine Tabelle der gültigen Namenszusätze findet sich in Anlage 7 zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp.
      Um die Verarbeitung ausländischer Namensangaben nicht zu verhindern, ist die Wertetabelle nur als "preferred binding" hinterlegt.
      Verwender müssen mindestens 20 Zeichen verarbeiten können.
    """
  * valueString from VSDMNamenszusatzVS (preferred)

// Zuordnung aus Versichertendaten -> Versicherter -> Nachname
* name[Name].family.extension[nachname] // MS bereits durch TIPatient vorgegeben
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
* name[Name].family.extension[vorsatzwort] // MS bereits durch TIPatient vorgegeben
  * ^short = "Vorsatzwort"
  * ^definition = """
      Vorsatzwort zum Nachnamen des Patienten (z.B. "van" in "Ludwig van Beethoven").
    """
  * ^comment = """
      Hinweise zum Umgang mit dieser Erweiterung siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name.
      Eine Tabelle der gültigen Vorsatzworte findet sich in Anlage 6 zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp.
      Um die Verarbeitung ausländischer Namensangaben nicht zu verhindern, ist die Wertetabelle nur als "preferred binding" hinterlegt.
      Verwender müssen mindestens 20 Zeichen verarbeiten können.
    """
  * valueString from VSDMVorsatzwortVS (preferred)

// Zuordnung aus Versichertendaten -> Versicherter -> Vorname
* name[Name].given // 1..* MS bereits durch TIPatient vorgegeben
  * ^comment = """
      Mehrere Vornamen können durch Leerzeichen oder Bindestrich getrennt in einem Wert angegeben werden. 
      Von der Wiederholung des given-Elemente SOLL kein Gebrauch gemacht werden; es wird zur besseren Interoperabilität allerdings nicht technisch verboten.
      Verwender müssen mindestens 45 Zeichen verarbeiten können.
    """

// Zuordnung aus Versichertendaten -> Versicherter -> Titel
* name[Name].prefix // MS bereits durch TIPatient vorgegeben
  * ^definition = """
      Namensteile vor dem Vornamen, z.B. akademischer Titel.
      Wenn dieses Attribut zur Angabe des akademischen Titels verwendet wird, ist die Erweiterung prefix-qualifier mit dem Wert AC (academic) verpflichtend anzugeben.
      Mehrere Titel werden durch Leerzeichen getrennt angegeben. 
      Verwender müssen mindestens 20 Zeichen verarbeiten können.
    """
  * ^comment = """
      Beispiele zur Verwendung siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Name.
    """
  * extension[prefix-qualifier] // MS bereits durch TIPatient vorgegeben
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
* gender // MS bereits durch TIPatient vorgegeben; zur Kardinalität siehe Invariante VSDMCoverage-gender-1 in VSDMCoverage
  * ^short = "Administrative Geschlechtsangabe (FHIR-Kodierung)"
  * ^definition = """
      Administrative Geschlechtsangabe gemäß den Unterlagen des Kostenträgers, kodiert nach FHIR-Standard.
    """
  * ^comment = """
      Hinweise zur Verwendung dieses Attributs und der Erweiterung siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Geschlecht.
    """
  * extension[other-amtlich] MS
    * ^short = "Administrative Geschlechtsangabe (deutsche Kodierung)"
    * ^definition = """
        Administrative Geschlechtsangabe gemäß den Unterlagen des Kostenträgers, kodiert nach Wertetabelle zur Unterscheidung zwischen "divers" und "unbestimmt".
      """
    * ^comment = """
        Hinweise zur Verwendung dieses Attributs und der Erweiterung siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Geschlecht.
        Nur bei FHIR-Kodierung "other" zu verwenden (vgl. Constraint pat-de-1).
      """

// Zuordnung aus Versichertendaten -> Versicherter -> Geburtsdatum
* birthDate // 1..1 MS bereits durch TIPatient vorgegeben
  * ^short = "Geburtsdatum"
  * ^definition = """
      Das Geburtsdatum des Versicherten ist in den VSD eine Pflichtangabe. 
      Partielle Datumsangaben sind allerdings zulässig.
    """
  * ^comment = """
      Hinweise insbesondere zur Angabe unvollständiger Datumswerte siehe https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Geburtsdatum.
    """

// Slicing der Adresse, um die geforderten Kardinalitäten festzulegen
* address 
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* address contains StrassenAdresse 0..1 and PostfachAdresse 0..1

// Zuordnung aus Versichertendaten -> Versicherter -> PostfachAdresse
* address[PostfachAdresse] only AddressDeBasis // address-de-basis
* address[PostfachAdresse] MS
  * type = #postal
  * line
    * ^comment = """
        Hinweise zur Abbildung von Adressen und Beispiele siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Addresse.
      """
  * country
    * ^short = "Staat"
    * ^definition = """
        Staatsangabe kodiert nach ISO-3166-1-2
      """
    * ^comment = """
        Die Kodierung ist durch den FHIR-Standard empfohlen, aber nicht erzwungen. 
        Durch die Verwendung der internationalen Kodierung wird die interoperable Verwendung der Adressangabe erleichtert.
      """
    * extension contains VSDMLaenderkennzeichen named Laenderkennzeichen 0..1 MS // zur Kardinalität siehe Invariante VSDMCoverage-address-1 in VSDMCoverage
    * extension[Laenderkennzeichen] 
      * ^short = "Länderkennzeichen nach DEÜV Anlage 8"
      * ^definition = """
          Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8. 
        """
      * ^comment = """
          Diese Erweiterung dient zur Wahrung der Abwärtskompatibilität für Systeme, die den gemäß DEÜV kodierten Wert benötigen.
        """

// Zuordnung aus Versichertendaten -> Versicherter -> StrassenAdresse
* address[StrassenAdresse] only AddressDeBasis // address-de-basis
* address[StrassenAdresse] MS
  * type = #physical
  * line
    * ^comment = """
        Hinweise zur Abbildung von Adressen und Beispiele siehe https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Addresse.
      """
  * country
    * ^short = "Staat"
    * ^definition = """
        Staatsangabe kodiert nach ISO-3166-1-2
      """
    * ^comment = """
        Die Kodierung ist durch den FHIR-Standard empfohlen, aber nicht erzwungen. 
        Durch die Verwendung der internationalen Kodierung wird die interoperable Verwendung der Adressangabe erleichtert.
      """
    * extension contains VSDMLaenderkennzeichen named Laenderkennzeichen 0..1 MS // zur Kardinalität siehe Invariante VSDMCoverage-address-1 in VSDMCoverage
    * extension[Laenderkennzeichen] 
      * ^short = "Länderkennzeichen nach DEÜV Anlage 8"
      * ^definition = """
          Kodierte Angabe des Länderkennzeichens nach DEÜV, Anlage 8. 
        """
      * ^comment = """
          Diese Erweiterung dient zur Wahrung der Abwärtskompatibilität für Systeme, die den gemäß DEÜV kodierten Wert benötigen.
        """
