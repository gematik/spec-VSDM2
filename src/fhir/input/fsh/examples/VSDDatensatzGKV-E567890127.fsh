Instance: VSDDatensatzGKV-E567890127
InstanceOf: VSDDatensatzGKV
Title: "E567890127 Freifrau an der Elster, Elke"
Description: "Testdatensatz E567890127 Freifrau an der Elster, Elke"

* Versichertendaten
  * Versicherter
    * VersichertenID = "E567890127"
    * Geburtsdatum = "1992-11-13"
    * Vorname = "Elke"
    * Nachname = "Elster"
    * Geschlecht = #W
    * Vorsatzwort = "an der"
    * Namenszusatz = "Freifrau"
//  * Titel (ohne)
    * PostfachAdresse
      * Postleitzahl = "8055"
      * Ort = "Graz"
      * Postfach = "9821"
      * Wohnsitzlaendercode = #A
    * StrassenAdresse 
      * Postleitzahl = "99095"
      * Ort = "Erfurt"
      * Wohnsitzlaendercode = #D
      * Strasse = "Elsterstraße"
      * Hausnummer = "5"
//    * Anschriftenzusatz (ohne)

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Erfurt"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "105929412"
  * AbrechnenderKostentraeger
    * Name = "Beispielkostenträger Essen"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "104547224"
  * WOP = #93 // Thüringen
//* BesonderePersonengruppe (ohne)
  * Zuzahlungsstatus
    * Status  = true
    * GueltigBis = "2026-06-30"
  * Versicherungsschutz 
    * Beginn = "1992-11-13"
    * Ende = "2026-12-31"
  * DMP[+]
    * DMP = #1 // Diabetes mellitus Typ 2 
    * Beginn = "2001-01-01"
//  * Ende
    * digitalesDMP = false
  * DMP[+]
    * DMP = #9 // Rückenschmerz
    * Beginn = "2020-01-01"
    * Ende = "2023-12-31"
    * digitalesDMP = true
  * Kostenerstattung
    * AerztlicheVersorgung = true
    * ZahnaerztlicheVersorgung = true
    * StationaererBereich = true
    * VeranlassteLeistungen = false
//* RuhenderLeistungsanspruch
//  * Beginn
//  * Ende
//  * Art
  * Versichertenart = #1 // Mitglied
