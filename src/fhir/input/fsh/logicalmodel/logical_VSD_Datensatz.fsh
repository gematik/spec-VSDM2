Logical: GEM_VSDM2_LOG_VSD_Confirmation
Parent: Element
Id: gem-vsdm2-log-vsd-confirmation
Title: "Logical Model VSD-Datensatz für VSDM 2.0"
Description: "Fachliches Modell zur Beschreibung des VSD-Datensatzes"
* Versichertendaten 1..1 BackboneElement "Versichertendaten"
  * VersichertenID 1..1 Identifier "KVNR" "Die Versicherten-ID ist der 10-stellige unveraenderliche Teil der 30-stelligen Krankenversichertennummer"
  * Versicherter 0..1 BackboneElement "Angaben zum Versicherten" "Angaben zum Versicherten"
    * Nachname 1..1 string "Gibt den Nachnamen des Versicherten an"
    * Vorname 1..1 string "Gibt den Vornamen der Person an." "Alle Vornamen der Person (max. 5) werden eingegeben. Mehrere Vornamen werden durch Leerzeichen oder Bindestrich getrennt."
    * Vorsatzwort 0..1 string "Gibt die Vorsatzwoerter der Person an." "Mehrere Vorsatzwörter werden durch Leerzeichen getrennt angegeben. Anlage 6 (Tabelle der gültigen Vorsatzworte) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp"
    * Namenszusatz 0..1 string "Gibt die Namenszusaetze der Person an, z. B.: Freiherr" "Anlage 7 (Tabelle der gültigen Namenszusätze) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp"
    * Titel 0..1 string "Gibt die akademischen Grade der Person an." "Mehrere Titel werden durch Leerzeichen getrennt angegeben."
    * Geburtsdatum 1..1 date "Gibt das Geburtsdatum des Versicherten an" "Das Geburtsjahr MUSS immer gefuellt werden. Bei Inlaendern ist immer ein logisch richtiges Geburtsdatum anzugeben. Bei Auslaendern gilt folgendes: Zumindest das Geburtsjahr ist immer anzugeben. Im Geburtstag oder im Geburtstag und im Geburtsmonat ist bei Ausländern „00“ bzw. „0000“ zulässig, wenn der Geburtstag und der Geburtsmonat nicht zu ermitteln sind. Das Geburtsdatum muss komplett gefüllt sein. Beispiel: 1990-00-00"
    * Geschlecht 1..1 string "Gibt das Geschlecht des Versicherten an" "M = maennlich, W = weiblich, X = unbestimmt, D = divers"
    * StrassenAdresse 0..1 BackboneElement "Gibt die Strassenadresse des Versicherten an"
      * Strasse 0..1 string "Gibt den Namen der Strasse an" "Wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen."
      * Hausnummer 0..1 string "Gibt die Hausnummer in der Strasse der Person an." "Wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen."
      * Postleitzahl 0..1 string "Gibt die Postleitzahl der Strassen- oder Postfachadresse an." "Die Befüllung des Feldes Postleitzahl erfolgt gemäß den Festlegungen der DEÜV. In Verbindung mit dem Wohnsitzländercode D für Deutschland MUSS die Postleitzahl 5-stellig numerisch sein. Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS die Postleitzahl zu beiden Adressdaten vorhanden sein. Bei Anschriften ohne Postleitzahl wird das Feld nicht verwendet."
      * Ort 1..1 string "Gibt den Ort zur Strassen- und oder Postfachadresse an." "Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS der Ort zu beiden Adressdaten vorhanden sein. Abweichung zur Festlegung in DEÜV (Feldlänge = 34)"
      * Anschriftenzusatz 0..1 string "ibt die relevanten Zusaetze zur Anschrift an. Als Anschriftenzusatz kann z. B. „Hinterhaus“ angegeben werden."
      * Wohnsitzlaendercode 1..1 string "Gibt das Land zu der Strassen- und oder Postfachadresse an." "Soweit Angaben zur Adresse und zum Postfach gemacht werden, muss der Wohnsitzlaendercode zu beiden Adressdaten vorhanden sein."
    * PostfachAdresse 0..1 BackboneElement "Gibt die Postfachadresse des Versicherten an"
      * Postfach 1..1 string "Gibt das Postfach des Versicherten an"
      * Postleitzahl 0..1 string "Gibt die Postleitzahl der Strassen- oder Postfachadresse an." "Die Befüllung des Feldes Postleitzahl erfolgt gemäß den Festlegungen der DEÜV. In Verbindung mit dem Wohnsitzländercode D für Deutschland MUSS die Postleitzahl 5-stellig numerisch sein. Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS die Postleitzahl zu beiden Adressdaten vorhanden sein. Bei Anschriften ohne Postleitzahl wird das Feld nicht verwendet."
      * Ort 1..1 string "Gibt den Ort zur Strassen- und oder Postfachadresse an." "Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS der Ort zu beiden Adressdaten vorhanden sein. Abweichung zur Festlegung in DEÜV (Feldlänge = 34)"
      * Wohnsitzlaendercode 1..1 string "Gibt das Land zu der Strassen- und oder Postfachadresse an." "Soweit Angaben zur Adresse und zum Postfach gemacht werden, muss der Wohnsitzlaendercode zu beiden Adressdaten vorhanden sein."
    * WIPTIMessengerID 0..1 string "Definition und Nutzung noch in Absprache - Eindeutige Identifikation einen TI-Messenger-Nutzers." "Die jeweils vollständige MXID der/des Versicherten soll dem LE zur Kommunikation mit der/dem Versicherten im Rahmen des Abrufs der VSD zur Verfügung gestellt werden können. Wenn sich der Versicherte für den TI Messenger-Dienst  registriert hat, MUSS es übertragen werden."
* Versicherungsdaten 1..1 BackboneElement "Angaben zum Versicherungsverhältnis"
  * Kostentraeger 1..1 BackboneElement "Angaben zum Kostenträger"
    * Name 1..1 string "Gibt den Namen der Institution/Organisation an."
    * Kostentraegerlaendercode 1..1 string "Gibt den Kostentraegerlaendercode vom Kostentraeger des Versicherten an."
    * Kostentraegerkennung 1..1 string "Gibt den Kostentraeger des Versicherten an. Es handelt sich um das bundesweit gueltige Institutionskennzeichen (IK) des jeweiligen Kostentraegers."
  * AbrechnenderKostentraeger 0..1 BackboneElement "Angaben zum abrechnenden Kostenträger"
    * Name 1..1 string "Gibt den Namen der Institution/Organisation an."
    * Kostentraegerlaendercode 1..1 string "Gibt den Kostentraegerlaendercode vom Kostentraeger des Versicherten an."
    * Kostentraegerkennung 1..1 string "Gibt den Kostentraeger des Versicherten an. Es handelt sich um das bundesweit gueltige Institutionskennzeichen (IK) des jeweiligen Kostentraegers."
  * WOP 1..1 string "Das Kennzeichen WOP ist gemaess § 2 Abs. 2 der Vereinbarung zur Festsetzung des Durchschnittsbetrages gemaess Artikel 2 § 2 Abs. 2 des Gesetzes zur Einfuehrung des Wohnortprinzips bei Honorarvereinbarungen fuer Aerzte und Zahnaerzte und zur Krankenversichertenkarte gemaess § 291 Abs. 2 Fuenftes Sozialgesetzbuch (SGB V) erforderlich." "Angaben gemäß Anlage 21 BMV-Ä und EKV."
  * WIPBesonderePersonengruppe 0..1 string "Definition und Nutzung noch in Absprache - Gibt die Zugehoerigkeit des Versicherten zu einer besonderen Personengruppe an. Die Kennzeichnung erfolgt gemaess der Schluesseltabelle."
  * WIPZuzahlungsstatus 1..1 BackboneElement "Definition und Nutzung noch in Absprache - Gibt den Zuzahlungsstatus des Versicherten an"
    * WIPKostentraegerAngabestatus 1..1 boolean "Definition und Nutzung noch in Absprache - Gibt an, ob der Kostenträger die Informationen zum Versicherten angibt" "1 (true) = Informationen werden durch den Kostenträger bereitgestellt, 0 (false) = Informationen werden durch den Kostenträger nicht bereitgestellt"
    * Status 1..1 boolean "Gibt an, ob fuer den Versicherten eine Befreiung von der Zuzahlungspflicht nach § 62 SGB V vorliegt." "1 true = von Zuzahlungspflicht befreit, 0 false = von Zuzahlungspflicht nicht befreit"
    * GueltigBis 0..1 date "Gibt die Gueltigkeit der Befreiung von der Zuzahlungspflicht nach § 62 SGB V an." "Wird nur angegeben, wenn Status Zuzahlung mit 1 = befreit angegeben ist."
  * Versicherungsschutz 1..1 BackboneElement "Angaben zum Versicherungsschutz"
    * Beginn 1..1 date "Gibt den Beginn des Versicherungsschutzes (hier: Leistungsanspruch) des Versicherten bei dem angegebenen Kostentraeger an."
    * WIPEnde 0..1 date "Gibt das Datum des Endes der Mitgliedschaft des Versicherten bei dem unter Klasse Kostentraeger angegebenen Kostentraeger an oder das Datum des Fristablaufs bei befristeter Gueltigkeit der Karte."
  * WIPDMP 0..* BackboneElement "Definition und Nutzung noch in Absprache - Angaben zur Teilnahme des Versicherten an DMP-Programmen"
    * WIPKostentraegerAngabestatus 1..1 boolean "Definition und Nutzung noch in Absprache - Gibt an, ob der Kostenträger die Informationen zum Versicherten angibt" "1 (true) = Informationen werden durch den Kostenträger bereitgestellt, 0 (false) = Informationen werden durch den Kostenträger nicht bereitgestellt"
    * DMP 1..1 string "Gibt den Namen des DMP-Programms an" "Angaben erfolgen gemaess Schlüsseltabelle"
    * Beginn 1..1 date "Gibt das Datum des Beginns der Einschreibung des Versicherten in ein DMP-Programm an."
    * Ende 0..1 date "Gibt das Datum des Endes der Einschreibung des Versicherten in ein DMP-Programm an."
  * WIPdigitalesDMP 0..* string "Definition und Nutzung noch in Absprache - Beinhaltet die Information, ob ein digitales DMP vorhanden ist"
  * WIPKostenerstattung 0..1 BackboneElement "Definition und Nutzung noch in Absprache - Angaben zur Kostenerstattung für verschiedene Sektoren"
    * WIPKostentraegerAngabestatus 1..1 boolean "Definition und Nutzung noch in Absprache - Gibt an, ob der Kostenträger die Informationen zum Versicherten angibt" "1 (true) = Informationen werden durch den Kostenträger bereitgestellt, 0 (false) = Informationen werden durch den Kostenträger nicht bereitgestellt"
    * AerztlicheVersorgung 1..1 boolean "Gibt die vom Versicherten gewaehlte Kostenerstattung fuer die aerztliche Versorgung an." "1 (true) = Kostenerstattung, 0 (false) = keine Kostenerstattung"
    * ZahnaerztlicheVersorgung 1..1 boolean "Gibt die vom Versicherten gewaehlte Kostenerstattung fuer zahnaerztliche Versorgung an." "1 (true) = Kostenerstattung, 0 (false) = keine Kostenerstattung"
    * StationaererBereich 1..1 boolean "Gibt die vom Versicherten gewaehlte Kostenerstattung fuer den stationaeren Bereich an." "1 (true) = Kostenerstattung, 0 (false) = keine Kostenerstattung"
    * VeranlassteLeistungen 1..1 boolean "Gibt die vom Versicherten gewaehlte Kostenerstattung fuer veranlasste Leistungen an." "1 (true) = Kostenerstattung, 0 (false) = keine Kostenerstattung"
  * WIPRuhenderLeistungsanspruch 0..1 BackboneElement "Definition und Nutzung noch in Absprache - Gibt an, ob für den Versicherten ein ruhender Leistungsanspruch vorliegt"
    * WIPKostentraegerAngabestatus 1..1 boolean "Definition und Nutzung noch in Absprache - Gibt an, ob der Kostenträger die Informationen zum Versicherten angibt" "1 (true) = Informationen werden durch den Kostenträger bereitgestellt, 0 (false) = Informationen werden durch den Kostenträger nicht bereitgestellt"
    * Beginn 1..1 date "Gibt das Beginn-Datum des ruhenden Leistungsanspruchs an."
    * Ende 0..1 date "Gibt das Ende-Datum des ruhenden Leistungsanspruchs an."
    * ArtDesRuhens 1..1 string "Gibt die Art des Ruhens an." "1 = vollständig, 2 = eingeschränkt"
  * Versichertenart 1..1 string "Gibt die Art der Versicherung an" "1 = Mitglied, 3 = Familienversicherter, 5 = Rentner und ihre Familienangehörigen"
  * Versicherungsart 1..1 string "Art der Versicherung: gesetzliche oder private Versicherung" "GKV = gesetzlich versichert, PKV = privat versichert"