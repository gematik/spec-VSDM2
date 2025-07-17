Logical: VSDDatensatz
Title: "Logisches Modell VSD-Datensatz für VSDM 2.0"
Parent: Element // Base würde besser passen, gibt es aber in R4 noch nicht. FSH/SUSHI können mit Base umgehen (siehe https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html#defining-logical-models), aber Simplifier.net hat damit Probleme.
Description: """
  Fachliches Modell zur Beschreibung des VSD-Datensatzes.
  Dieses Modell setzt die Original-Angaben der BMV-Ä unverändert um. Es dient als Ausgangspunkt für die Mappings und ConceptSets, die die Abbildung auf FHIR-Ressourcen vornehmen.
  Die Modell-Elemente sind exakt in der Reihenfolge der Ausgangsvereinbarung aufgeführt. Hinweise zum Datenformat wurden in den Langtext der Beschreibung übertragen; der Kurztext wurde zur besseren Lesbarkeit angepasst.
  Hinweise aus dem Originaldatensatz: 
    * TI-Messenger ID: Wird nicht aufgenommen, da keine rechtliche Grundlage existiert.
    * Wahltarife: aktuell keine Abbildung im VSDM 2.0, aber BMV-Ä verständigen sich hierzu im Rahmen weiterer Beratungen (ggf. Protokollnotiz).
"""

* Versichertendaten 1..1 BackboneElement "Versichertendaten"

  * Versicherter 1..1 BackboneElement "Angaben zum Versicherten" 
    * VersichertenID 1..1 string "Versicherten-ID (KVNR)" """
        Die Versicherten-ID ist der 10-stellige unveraäderliche Teil der 30-stelligen Krankenversichertennummer.
        Länge: 10
        Typ: AN
      """
    * Geburtsdatum 1..1 date "Geburtsdatum des Versicherten" """
        Gibt das Geburtsdatum der Person an.
        Hinweis: Das Geburtsjahr MUSS immer gefüllt werden. Bei Inländern ist immer ein logisch richtiges Geburtsdatum anzugeben. 
        Bei Ausländern gilt folgendes: Zumindest das Geburtsjahr ist immer anzugeben. Im Geburtstag oder im Geburtstag und im Geburtsmonat ist bei Ausländern „00“ bzw. „0000“ zulässig, wenn der Geburtstag und der Geburtsmonat nicht zu ermitteln sind. 
        Typ: AN
      """
      // Typ AN ist hier auf den ersten Blick unerwartet, hängt aber vielleicht mit der Definition von ISO8601Date zusammen.
    * Vorname 1..1 string "Vorname des Versicherten" """
        Gibt den Vornamen der Person an.
        Alle Vornamen der Person (max. 5) werden eingegeben. Mehrere Vornamen werden durch Leerzeichen oder Bindestrich getrennt.
        Länge: 45
        Typ: AN
      """
    * Nachname 1..1 string "Nachname des Versicherten" """
        Gibt den Nachnamen der Person an.
        Länge: 45
        Typ: AN
      """
    * Geschlecht 1..1 code "Geschlecht des Versicherten" """
        Gibt das Geschlecht der Person an. Wertetabelle M,W,D,X
        Länge: 1
        Typ: AN
      """
    * Vorsatzwort 0..1 string "Vorsatzwörter des Namens des Versicherten" """
        Gibt die Vorsatzwörter der Person an.
        Mehrere Vorsatzwörter werden durch Leerzeichen getrennt angegeben.
        Anlage 6 (Tabelle der gültigen Vorsatzworte) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
        Länge: 20
        Typ: AN
      """
    * Namenszusatz 0..1 string "Namenszusätze des Versicherten" """
        Gibt die Namenszusätze der Person an, z. B.: Freiherr
        Mehrere Namenzusätze werden durch Leerzeichen getrennt angegeben.
        Anlage 7 (Tabelle der gültigen Namenszusätze) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
        Länge: 20
        Typ: AN
      """
    * Titel 0..1 string "Akademische Titel des Versicherten" """
        Gibt die akademischen Grade der Person an.
        Mehrere Titel werden durch Leerzeichen getrennt angegeben.
        Länge: 20
        Typ: AN
      """

    * PostfachAdresse 0..1 BackboneElement "Postfachadresse des Versicherten"
      * Postleitzahl 1..1 string "Postleitzahl der Postfachadresse" """
          Gibt die Postleitzahl der Strassen- oder Postfachadresse an. Die Befüllung des Feldes Postleitzahl erfolgt gemäß den Festlegungen der DEÜV. 
          In Verbindung mit dem Wohnsitzländercode ""D"" für Deutschland MUSS die Postleitzahl 5-stellig numerisch sein. 
          Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS die Postleitzahl zu beiden Adressdaten vorhanden sein. 
          Bei Anschriften ohne Postleitzahl wird das Feld nicht verwendet.
          Länge: 10
          Typ: AN
        """
      * Ort 1..1 string "Ort der Postfachadresse" """
          Gibt den Ort zur Strassen- und oder Postfachadresse an. 
          Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS der Ort zu beiden Adressdaten vorhanden sein.
          Abweichung zur Festlegung in DEÜV (Feldlänge = 34)
          Länge: 40
          Typ: AN
        """
      * Postfach 1..1 string "Postfach des Versicherten" """
          Gibt das Postfach der Person an.
          Länge: 8
          Typ: AN
        """
      * Wohnsitzlaendercode 1..1 code "Land der Postfachadresse" """
          Gibt das Land zu der Strassen- und oder Postfachadresse an. 
          Soweit Angaben zur Adresse und zum Postfach gemacht werden, muss der Wohnsitzländercode zu beiden Adressdaten vorhanden sein.
          Anlage 8 (Staatsangehörigkeit und Länderkennzeichen für Auslandsanschriften) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
          Länge: 3
          Typ: AN
        """

    * StrassenAdresse 0..1 BackboneElement "Strassenadresse des Versicherten"
      * Postleitzahl 0..1 string "Postleitzahl der Strassenadresse" """
          Gibt die Postleitzahl der Strassen- oder Postfachadresse an. Die Befüllung des Feldes Postleitzahl erfolgt gemäß den Festlegungen der DEÜV. In Verbindung mit dem Wohnsitzländercode ""D"" für Deutschland MUSS die
          Postleitzahl 5-stellig numerisch sein. Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS die Postleitzahl zu beiden Adressdaten vorhanden sein. Bei Anschriften ohne Postleitzahl wird das Feld nicht verwendet.
          Länge: 10
          Typ: AN
        """
      * Ort 1..1 string "Ort der Strassenadresse" """
          Gibt den Ort zur Strassen- und oder Postfachadresse an. 
          Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS der Ort zu beiden Adressdaten vorhanden sein.
          Abweichung zur Festlegung in DEÜV (Feldlänge = 34)
          Länge: 40
          Typ: AN
        """
      * Wohnsitzlaendercode 1..1 code "Land der Strassenadresse" """
          Gibt das Land zu der Strassen- und oder Postfachadresse an. 
          Soweit Angaben zur Adresse und zum Postfach gemacht werden, muss der Wohnsitzländercode zu beiden Adressdaten vorhanden sein.
          Anlage 8 (Staatsangehörigkeit und Länderkennzeichen für Auslandsanschriften) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
          Länge: 3
          Typ: AN
        """
      * Strasse 0..1 string "Name der Strasse" """
          Gibt den Namen der Strasse an.
          Wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen.
          Anlage 9.4 (Datensätze und Datenbausteine sowie Fehlerkatalog) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp 
          Länge: 46
          Typ: AN
        """
      * Hausnummer 0..1 string "Hausnummer der Strassenadresse" """
          Gibt die Hausnummer in der Strasse der Person an.
          Pflichtangabe soweit bekannt, wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen. 
          Anlage 9.4 (Datensätze und Datenbausteine sowie Fehlerkatalog) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp 
          Länge: 9
          Typ: AN
        """
      * Anschriftenzusatz 0..1 string "Relevante Zusätze zur Anschrift" """
          Gibt die relevanten Zusätze zur Anschrift an.
          Als Anschriftenzusatz kann z. B. „Hinterhaus“ angegeben werden.
          Länge: 40
          Typ: AN
        """

* Versicherungsdaten 1..1 BackboneElement "Angaben zum Versicherungsverhältnis"
  * Kostentraeger 1..1 BackboneElement "Angaben zum Kostenträger"
    * Name 1..1 string "Name des Kostenträgers" """
        Gibt den Namen der Institution/Organisation an.
        Länge: 45
        Typ: AN
      """
    * Kostentraegerlaendercode 1..1 code "Kostenträgerländercode" """
        Gibt den Kostenträgerländercode vom Kostenträger des Versicherten an.
        Anlage 8 (Staatsangehörigkeit und Länderkennzeichen für Auslandsanschriften) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
        Länge: 3
        Typ: AN
      """
    * Kostentraegerkennung 1..1 string "Kostenträgerkennung (Institutionskennzeichen)" """
        Gibt den Kostenträger des Versicherten an. Es handelt sich um das bundesweit gültige Institutionskennzeichen (IK) des jeweiligen Kostenträgers.
        Länge: 9
        Typ: AN
      """
  * AbrechnenderKostentraeger 0..1 BackboneElement "Angaben zum abrechnenden Kostenträger"
    * Name 1..1 string "Name des Kostenträgers" """
        Gibt den Namen der Institution/Organisation an.
        Länge: 45
        Typ: AN
      """
    * Kostentraegerlaendercode 1..1 code "Kostenträgerländercode" """
        Gibt den Kostenträgerländercode vom Kostenträger des Versicherten an.
        Anlage 8 (Staatsangehörigkeit und Länderkennzeichen für Auslandsanschriften) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
        Länge: 3
        Typ: AN
      """
    * Kostentraegerkennung 1..1 string "Kostenträgerkennung (Institutionskennzeichen)" """
        Gibt den Kostenträger des Versicherten an. Es handelt sich um das bundesweit gültige Institutionskennzeichen (IK) des jeweiligen Kostenträgers.
        Länge: 9
        Typ: AN
      """
  * WOP 1..1 code "Kennzeichen Wohnortprinzip" """
      Das Kennzeichen WOP ist gemäss § 2 Abs. 2 der Vereinbarung zur Festsetzung des Durchschnittsbetrages gemäss Artikel 2 § 2 Abs. 2 des Gesetzes zur Einführung des Wohnortprinzips bei Honorarvereinbarungen für Ärzte und Zahnärzte und zur Krankenversichertenkarte gemäss § 291 Abs. 2 Fünftes Sozialgesetzbuch (SGB V) erforderlich.
      01 = Schleswig-Holstein
      02 = Hamburg
      03 = Bremen
      17 = Niedersachsen
      20 = Westfalen-Lippe
      38 = Nordrhein
      46 = Hessen
      51 = Rheinland-Pfalz
      52 = Baden-Württemberg
      71 = Bayern
      72 = Berlin
      73 = Saarland
      78 = Mecklenburg-Vorpommern
      83 = Brandenburg
      88 = Sachsen-Anhalt
      93 = Thüringen
      98 = Sachsen
      Gemäß Anlage 21 BMV-Ä und EKV.
      Länge: 2
      Typ: AN
    """
  * BesonderePersonengruppe 0..1 code "Zuordnung besondere Personengruppe" """
      Gibt die Zugehörigkeit des Versicherten zu einer besonderen Personengruppe an. Die Kennzeichnung erfolgt gemäß der aktuellen Schlüsseltabelle.
      4 = BSHG (Bundessozialhilfegesetz) § 264 SGB V, 
      6 = SER (Soziales Entschädigungsrecht), 
      7 = SVA-Kennzeichnung für zwischenstaatliches Krankenversicherungsrecht: - Personen mit Wohnsitz im Inland, Abrechnung nach Aufwand, 
      8 = SVA-Kennzeichnung, pauschal,
      9 = Empfänger von Gesundheitsleistungen nach §§ 4 und 6 des Asylbewerberleistungsgesetzes (AsylbLG)
      Länge: 2
      Typ: N
    """
  * Zuzahlungsstatus 0..1 BackboneElement "Zuzahlungsstatus des Versicherten"
    * Status 1..1 boolean "Versicherter von Zuzahlungspflicht befreit" """
        Gibt an, ob für den Versicherten eine Befreiung von der Zuzahlungspflicht nach § 62 SGB V vorliegt.	
        1 = von Zuzahlungspflicht befreit
        Länge: 1
        Typ: offen
      """
      // TODO Zelle C32: Typ "offen"
    * GueltigBis 1..1 date "Gültigkeit des Zuzahlungsstatus" """
	      Gibt die Gültigkeit der Befreiung von der Zuzahlungspflicht nach § 62 SGB V an.	Wird nur angegeben, wenn Zuzahlungsstatus mit 1 (= befreit) angegeben ist.
        Typ: ISO8601Date
      """
  * Versicherungsschutz 1..1 BackboneElement "Versicherungsschutz des Versicherten"
    * Beginn 1..1 date "Beginn des Versicherungsschutzes" """
        Gibt den Beginn des Versicherungsschutzes (hier: Leistungsanspruch) des Versicherten bei dem unter Klasse Kostenträger angegebenen Kostenträger an. 
        Typ: ISO8601Date
      """
    * Ende 0..1 date "Ende des Versicherungsschutzes" """
        Das Ende ist bei befristeter Gültigkeit der elektronischen Gesundheitskarte das Datum des Fristablaufs. (Definition aus §291a Abs. 2 Nr. 10 SGB V)
        Typ: ISO8601Date
      """
  * DMP 0..* BackboneElement "Angaben zur Teilnahme des Versicherten an Disease Management-Programmen"
    * DMP 1..1 code "Name des DMP-Programms" """
        Gibt den Namen des DMP an; die Kennzeichnung erfolgt gemäß der aktuellen Schlüsseltabelle.
        1 = Diabetes mellitus Typ 2 
        2 = Brustkrebs 
        3 = Koronare Herzkrankheit
        4 = Diabetes mellitus Typ 1 
        5 = Asthma bronchiale 
        6 = COPD (chronic obstructive pulmonary disease)
        7 = Chronische Herzinsuffizienz
        8 = Depression
        9 = Rückenschmerz
        10 = Rheuma
        11 = Osteoporose
        12 = Adipositas - Erwachsene
        Länge: zu def.
        Typ: zu def.
      """
    * Beginn 1..1 date "Beginn der Einschreibung" """
        Gibt das Datum des Beginns der Einschreibung des Versicherten in ein DMP-Programm an.
        Typ: ISO8601Date
      """
    * Ende 0..1 date "Ende der Einschreibung" """
        Gibt das Datum des Endes der Einschreibung des Versicherten in ein DMP-Programm an.
        Typ: ISO8601Date
      """
    * digitalesDMP 1..1 boolean "Kennzeichen digitales DMP" """
        Beinhaltet die Information, ob das DMP als digitales DMP durchgeführt wird; Information kann je DMP bereitgestellt werden
        Länge: 1
        Typ: Bool
      """
  * Kostenerstattung 0..1 BackboneElement "Angaben zur Kostenerstattung"
    * AerztlicheVersorgung 1..1 boolean "Ärztliche Versorgung" """
        Gibt die vom Versicherten gewählte Kostenerstattung für die ärztliche Versorgung an.
        1 (true) = Kostenerstattung
        0 (false) = keine Kostenerstattung
        Länge: 1
        Typ: B
      """
    * ZahnaerztlicheVersorgung 1..1 boolean "Zahnärztliche Versorgung" """
        Gibt die vom Versicherten gewählte Kostenerstattung für zahnärztliche Versorgung an.
        1 (true) = Kostenerstattung
        0 (false) = keine Kostenerstattung
        Länge: 1
        Typ: B
      """
    * StationaererBereich 1..1 boolean "Stationärer Bereich" """
        Gibt die vom Versicherten gewählte Kostenerstattung für den stationären Bereich an.
        1 (true) = Kostenerstattung
        0 (false) = keine Kostenerstattung
        Länge: 1
        Typ: B
      """
    * VeranlassteLeistungen 1..1 boolean "Veranlasste Leistungen" """
        Gibt die vom Versicherten gewählte Kostenerstattung für veranlasste Leistungen an.
        1 (true) = Kostenerstattung
        0 (false) = keine Kostenerstattung
        Länge: 1
        Typ: B
      """
  * RuhenderLeistungsanspruch 0..1 BackboneElement "Ruhender Leistungsanspruch"
    * Beginn 1..1 date "Beginn des ruhenden Leistungsanspruchs" """
        Gibt das Beginn-Datum des ruhenden Leistungsanspruchs an.
        Typ: ISO8601Date
      """
    * Ende 0..1 date "Ende des ruhenden Leistungsanspruchs" """
        Gibt das Ende-Datum des ruhenden Leistungsanspruchs an.
        Typ: ISO8601Date
      """
    * Art 1..1 code "Art des Ruhens" """
        Gibt die Art des Ruhens an.
        1 = vollständig
        2 = eingeschränkt
        Länge: 1
        Typ: N
      """
  * Versichertenart 1..1 code "Art der Versicherung" """
      1 = Mitglied
      3 = Familienversicherter
      5 = Rentner und ihre Familienangehörigen 
      Länge: 1
      Typ: AN
    """
