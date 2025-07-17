Instance: VSDDatensatz-Z987654321
InstanceOf: VSDDatensatz
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias"
Description: "Testdatensatz Z987654321 Graf von und zu Zaunkönig, Zacharias"

* Versichertendaten
  * Versicherter
    * VersichertenID = "Z987654321"
    * Geburtsdatum = "1987-05-16"
    * Vorname = "Zacharias"
    * Nachname = "Zaunkönig"
    * Geschlecht = #X
    * Vorsatzwort = "von und zu"
    * Namenszusatz = "Graf"
    * Titel = "Prof. Dr. rer. nat."
    * PostfachAdresse
      * Postleitzahl = "08062"
      * Ort = "Zwickau"
      * Postfach = "885522"
      * Wohnsitzlaendercode = #D
    * StrassenAdresse 
      * Postleitzahl = "08066"
      * Ort = "Zwickau"
      * Wohnsitzlaendercode = #D
      * Strasse = "Zaunkönigpfad"
      * Hausnummer = "99x"
      * Anschriftenzusatz = "zweites Nest rechter Ast"

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Leipzig"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "108213958"
  * AbrechnenderKostentraeger
    * Name = "Beispielkostenträger Schwerin"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "100293710"
  * WOP = #98 // Sachsen
  * BesonderePersonengruppe = #7 // SVA-Kennzeichnung für zwischenstaatliches Krankenversicherungsrecht
  * Zuzahlungsstatus
    * Status = true
    * GueltigBis = "2025-12-31"
  * Versicherungsschutz 
    * Beginn = "2000-01-01"
    * Ende = "2029-12-31"
  * DMP[+]
    * DMP = #1 // Diabetes mellitus Typ 2 
    * Beginn = "2001-01-01"
//  * Ende
    * digitalesDMP = false
  * DMP[+]
    * DMP = #8 // Depression
    * Beginn = "2020-01-01"
    * Ende = "2023-12-31"
    * digitalesDMP = true
  * Kostenerstattung
    * AerztlicheVersorgung = true
    * ZahnaerztlicheVersorgung = true
    * StationaererBereich = true
    * VeranlassteLeistungen = false
  * RuhenderLeistungsanspruch
    * Beginn = "2025-01-01"
    * Ende = "2025-12-31"
    * Art = #1 // vollständig
  * Versichertenart = #3 // Familienversicherter
