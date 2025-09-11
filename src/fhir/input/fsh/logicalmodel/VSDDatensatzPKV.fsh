Logical: VSDDatensatzPKV
Title: "Logisches Modell VSD-Datensatz PKV für VSDM 2.0"
Parent: Element // Base würde besser passen, gibt es aber in R4 noch nicht. FSH/SUSHI können mit Base umgehen (siehe https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html#defining-logical-models), aber Simplifier.net hat damit Probleme.
Description: """
  Fachliches Modell zur Beschreibung des VSD-Datensatzes für den Bereich der Privaten Krankenversicherung (PKV).
  Dieses Modell stellt die Struktur für die Versichertendaten eines Privatversicherten bereit und dient als Ausgangspunkt für die Mappings, die die Abbildung auf FHIR-Ressourcen vornehmen.
"""

* Versichertendaten 1..1 BackboneElement "Versichertendaten"

  * VersichertenID 1..1 string "Versicherten-ID (KVNR)" """
      Die Versicherten-ID ist der 10-stellige unveränderliche Teil der 30-stelligen Krankenversichertennummer.
    """
  * Geburtsdatum 1..1 date "Geburtsdatum des Versicherten" """
      Gibt das Geburtsdatum der Person an.
      Zumindest das Geburtsjahr ist immer anzugeben. 
      Im Geburtstag oder im Geburtstag und im Geburtsmonat ist „00“ bzw. „0000“ zulässig, wenn der Geburtstag und der Geburtsmonat nicht zu ermitteln sind. 
    """
  * Vorname 1..1 string "Vorname des Versicherten" """
      Gibt den Vornamen der Person an.
      Alle Vornamen der Person werden eingegeben.
    """
  * Nachname 1..1 string "Nachname des Versicherten" """
      Gibt den Nachnamen (Familiennamen) der Person an.
    """
  * Geschlecht 0..1 code "Geschlecht des Versicherten" """
      Gibt das Geschlecht der Person an. 
      Es werden die gesetzlich vorgegebenen Werte gemäß PStG (weiblich, männlich, divers, ohne Angabe) abgebildet.
    """
  * Vorsatzwort 0..1 string "Vorsatzwörter des Namens des Versicherten" """
      Gibt die Vorsatzwörter der Person an.
      Mehrere Vorsatzwörter werden durch Leerzeichen getrennt angegeben.
      Die Vorsatzwörter sollen sich an der Werteliste aus Anlage 6 (Tabelle der gültigen Vorsatzworte) zur DEÜV orientieren.
    """
    * ^comment = "DEÜV siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp"
  * Namenszusatz 0..1 string "Namenszusätze des Versicherten" """
      Gibt die Namenszusätze der Person an, z. B.: Freiherr.
      Mehrere Namenzusätze werden durch Leerzeichen getrennt angegeben.
      Die Namenszusätze sollen sich an der Werteliste aus Anlage 7 (Tabelle der gültigen Namenszusätze) zur DEÜV orientieren.
    """
    * ^comment = "DEÜV siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp"
  * Titel 0..1 string "Akademische Titel des Versicherten" """
      Gibt die akademischen Grade der Person an.
      Mehrere Titel werden durch Leerzeichen getrennt angegeben.
    """

  * Postfachadresse 0..1 BackboneElement "Postfachadresse des Versicherten"
    * Postfach 1..1 string "Postfach des Versicherten" """
        Gibt das Postfach der Person an.
      """
    * Postleitzahl 1..1 string "Postleitzahl der Postfachadresse" """
        Gibt die Postleitzahl der Strassen- oder Postfachadresse an.
      """
    * Ort 1..1 string "Ort der Postfachadresse" """
        Gibt den Ort zur Postfachadresse an. 
      """
    * Land 1..1 code "Land der Postfachadresse" """
        Gibt das Land zu der Postfachadresse an. 
        Es werden Landesangaben nach ISO 3166-2 verwendet.
      """

  * Wohnsitzadresse 0..1 BackboneElement "Wohnsitzadresse des Versicherten"
    * Strasse 0..1 string "Name der Strasse" """
        Gibt den Namen der Strasse der Wohnsitzadresse an.
        Wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen.
      """
    * Hausnummer 0..1 string "Hausnummer der Wohnsitzadresse" """
        Gibt die Hausnummer in der Strasse der Person an.
        Pflichtangabe soweit bekannt; wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen. 
      """
    * Anschriftenzusatz 0..1 string "Relevante Zusätze zur Anschrift" """
        Gibt die relevanten Zusätze zur Anschrift an.
        Als Anschriftenzusatz kann z. B. „Hinterhaus“ angegeben werden.
      """
    * Postleitzahl 0..1 string "Postleitzahl der Wohnsitzadresse" """
        Gibt die Postleitzahl der Wohnsitzadresse an. 
      """
    * Ort 1..1 string "Ort der Wohnsitzadresse" """
        Gibt den Ort zur Wohnsitzadresse an. 
      """
    * Land 1..1 code "Land der Wohnsitzadresse" """
        Gibt das Land zu der Wohnsitzadresse an. 
        Es werden Landesangaben nach ISO 3166-2 verwendet.
      """

  * TIMessengerID 0..1 string "TI-Messenger-ID" """
      Gibt die TI-Messenger-ID des Versicherten an, soweit bekannt.
    """

* Versicherungsdaten 1..1 BackboneElement "Angaben zum Versicherungsverhältnis"
  * Kostentraeger 1..1 BackboneElement "Angaben zum Kostenträger"
    * Name 1..1 string "Name des Kostenträgers" """
        Gibt den Namen der Institution/Organisation an.
      """
    * Kostentraegerkennung 1..1 string "Kostenträgerkennung (Institutionskennzeichen)" """
        Gibt den Kostenträger des Versicherten an. Es handelt sich um das bundesweit gültige Institutionskennzeichen (IK) des jeweiligen Kostenträgers.
      """

  * Versicherungsschutz 0..1 BackboneElement "Versicherungsschutz des Versicherten" """
      Angaben zu Beginn und Ende des Vertragsverhältnisses sind im PKV-Bereich grundsätzlich optional.
      Wenn diese Struktur angegeben wird, muss mindestens Beginn- oder Endedatum angegeben werden.
    """
    * Beginn 0..1 date "Beginn des Versicherungsschutzes" """
        Gibt den Beginn des Versicherungsschutzes des Versicherten bei dem angegebenen Kostenträger an. 
        Dieser Wert darf nicht vor dem Geburtsdatum liegen.
      """
    * Ende 0..1 date "Ende des Versicherungsschutzes" """
        Gibt das Ende des Versicherungsschutzes des Versicherten bei dem angegebenen Kostenträger an. 
      """

  * Beihilfe 0..1 BackboneElement "Beihilfeanspruch" """
      Informationen für Versicherte mit Beihilfeanspruch. 
      Diese Struktur ist für Versicherte ohne Beihilfeanspruch nicht anzugeben.
    """
    * ^comment = "Hintergrundinformationen siehe https://www.pkv.de/wissen/private-krankenversicherung/leistungen-und-erstattung/privatversichert-im-beamtenverhaeltnis/"
    * Beihilfeanspruch 1..1 boolean "Versicherter mit Beihilfeanspruch" """
        Kennzeichnet einen Versicherten mit Beihilfeanspruch.
        Dieses Kennzeichen ist anzugeben, sobald die Struktur Beihilfe erforderlich wird (notwendig, da die Beihilfequote nicht immer vorliegt). 
      """
    * QuotePKV 0..1 unsignedInt "Quote PKV bei Beihilfe" """
        Prozentwert des über die Beihilfe hinaus in der PKV versicherten Anteils.
      """
      * ^comment = "Prozentwert (0..100)"
    
  * Krankenhausleistungen 0..1 BackboneElement "Kostenübernahme für Krankenhausleistungen" """
      Informationen zur Kostenübernahme für Krankenhausleistungen.
    """
    * Allgemein 0..1 unsignedInt "Allgemeine Krankenhausleistungen" """
        Versicherter Anteil in Prozent für allgemeine Krankenhausleistungen.
      """
      * ^comment = "Prozentwert (0..100)"
    * Zweibettzimmer 0..1 unsignedInt "Zweibettzimmerzuschlag" """
        Versicherter Anteil in Prozent für den Zweibettzimmerzuschlag.
      """
      * ^comment = "Prozentwert (0..100)"
    * Einbettzimmer 0..1 unsignedInt "Einbettzimmerzuschlag" """
        Versicherter Anteil in Prozent für den Einbettzimmerzuschlag.
      """
      * ^comment = "Prozentwert (0..100)"
    * ZweiEinbettDifferenz 0..1 unsignedInt "Differenz zwischen Zwei- und Einbettzimmerzuschlag" """
        Versicherter Anteil in Prozent für die Differenz zwischen Zweibettzimmer- und den Einbettzimmerzuschlag (z.B. Beihilfetarif zuzüglich Beihilfeergänzungsversicherung).
      """
      * ^comment = "Prozentwert (0..100)"
    * Wahlarzt[x] 0..1 boolean or unsignedInt "Wahlärztliche Leistungen" """
        Übernahme wahlärztlicher Leistungen.        
      """
      * ^comment = "Angabe als reines Kennzeichen (ja/nein) oder als Prozentwert (0..100) möglich."
    * Belegarzt[x] 0..1 boolean or unsignedInt "Belegärztliche Leistungen" """
        Übernahme belegärztlicher Leistungen (kein Bestandteil der wahlärztlichen Leistungen).
      """
      * ^comment = "Angabe als reines Kennzeichen (ja/nein) oder als Prozentwert (0..100) möglich."

  * Sozialtarif 0..1 code "Sozialtarif" """
      Anwendung eines verbandseinheitlichen Tarifs mit Besonderheiten bezüglich der Leistungen und privatärztliche Abrechnungen.
      Mögliche Werte:
      S = Standardtarif,
      B = Basistarif,
      N = Notlagentarif.
    """
    * ^comment = "Hintergrundinformationen siehe https://www.pkv.de/wissen/private-krankenversicherung/brancheneinheitliche-tarife/"

  * Versichertenart 0..1 code "Rolle der Person im PKV-Vertrag" """
      VN = Versicherungsnehmer / Vertragsinhaber
      VP = versicherte Person
    """

  * Hinweis 0..* BackboneElement "Hinweise an Leistungserbringer" """
      Optionale Hinweise in Freitextform für Leistungserbringer.
      Die Relevanz eines Hinweises kann auf einzelne Leistungserbringer-Institutionstypen (professionOID gemäß gemSpec_OID) eingeschränkt werden.
      Hinweise ohne Angabe einer Berufsgruppe sind für alle Leistungserbringer relevant.
    """
    * Hinweistext 1..1 markdown "Hinweistext" """
        Hinweistext im Markdown-Format. 
        Der Hinweistext ist nicht zur maschinellen Verarbeitung vorgesehen, sondern muss dem Leistungserbringer lediglich angezeigt werden.
      """
    * Institutionstypen 0..* oid "betroffene LEI-Typen" """
        Leistungserbringer-Institutionstypen, für die der Hinweistext relevant ist.
        Die Angabe erfolgt als Liste von professionOIDs gemäß gemSpec_OID Tabelle Tab_PKI_403-*.
        Die Verwendung anderer OIDs (insbesondere individueller Berufsgruppen) ist nicht zulässig.
        Wenn keine Institutionstypen angegeben sind oder das empfangende System den Filter nicht anzeigen kann, ist der Hinweistext sicherheitshalber anzuzeigen.
      """ 



