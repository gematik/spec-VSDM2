Logical: GEM_VSDM2_LOG_VSD_Confirmation
Parent: Element
Id: gem-vsdm2-log-vsd-confirmation
Title: "Logical Model VSD-Datensatz für VSDM 2.0"
Description: "Fachliches Modell zur Beschreibung des VSD-Datensatzes"
* VersichertenID 1..1 Identifier "KVNR" "Die Versicherten-ID ist der 10-stellige unveraenderliche Teil der 30-stelligen Krankenversichertennummer"
* Versicherter 0..1 BackboneElement "Angaben zum Versicherten" "Angaben zum Versicherten"
  * Nachname 1..1 string "Gibt den Nachnamen des Versicherten an"
  * Vorname 1..1 string "Gibt den Vornamen der Person an." "Alle Vornamen der Person (max. 5) werden eingegeben. Mehrere Vornamen werden durch Leerzeichen oder Bindestrich getrennt."
  * Vorsatzwort 0..1 string "Gibt die Vorsatzwoerter der Person an." "Mehrere Vorsatzwörter werden durch Leerzeichen getrennt angegeben. Anlage 6 (Tabelle der gültigen Vorsatzworte) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp"
  * Namenszusatz 0..1 string "Gibt die Namenszusaetze der Person an, z. B.: Freiherr" "Anlage 7 (Tabelle der gültigen Namenszusätze) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp"
  * Titel 0..1 string "Gibt die akademischen Grade der Person an." "Mehrere Titel werden durch Leerzeichen getrennt angegeben."
  * Geschlecht 1..1 string "Gibt das Geschlecht des Versicherten an"
  * StrassenAdresse 0..1 BackboneElement "Gibt die Strassenadresse des Versicherten an"
    * Strasse 0..1 string "Gibt den Namen der Strasse an" "Wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen."
    * Hausnummer 0..1 string "Gibt die Hausnummer in der Strasse der Person an." "Wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen."
    * Postleitzahl 0..1 string "Gibt die Postleitzahl der Strassen- oder Postfachadresse an." "Die Befüllung des Feldes Postleitzahl erfolgt gemäß den Festlegungen der DEÜV. In Verbindung mit dem Wohnsitzländercode D für Deutschland MUSS die Postleitzahl 5-stellig numerisch sein. Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS die Postleitzahl zu beiden Adressdaten vorhanden sein. Bei Anschriften ohne Postleitzahl wird das Feld nicht verwendet."
    * Ort 1..1 string "Gibt den Ort zur Strassen- und oder Postfachadresse an. " "Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS der Ort zu beiden Adressdaten vorhanden sein. Abweichung zur Festlegung in DEÜV (Feldlänge = 34)"


