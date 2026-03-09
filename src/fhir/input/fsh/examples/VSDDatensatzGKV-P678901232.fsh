Instance: VSDDatensatzGKV-P678901232
InstanceOf: VSDDatensatzGKV
Title: "P678901232 Pinguin, Paula (GKV)"
Description: "Testdatensatz P678901232 Pinguin, Paula (GKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "P678901232"
    * Geburtsdatum = "2009-06-08"
    * Vorname = "Paula"
    * Nachname = "Pinguin"
    * Geschlecht = #W
//  * Vorsatzwort (ohne)
//  * Namenszusatz (ohne)
//  * Titel (ohne)
//  * PostfachAdresse (ohne)
//    * Postleitzahl
//    * Ort
//    * Postfach
//    * Wohnsitzlaendercode
    * StrassenAdresse 
      * Postleitzahl = "10000"
      * Ort = "Prishtina"
      * Wohnsitzlaendercode = #KOS
      * Strasse = "Rruga e UQK-se"
      * Hausnummer = "62"
//    * Anschriftenzusatz (ohne)

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Offenburg"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "107668422"
//* AbrechnenderKostentraeger (ohne)
//  * Name
//  * Kostentraegerlaendercode
//  * Kostentraegerkennung
  * WOP = #52 // Baden-Württemberg
//* BesonderePersonengruppe (ohne)
  * Zuzahlungsstatus
    * Status = true
    * GueltigBis = "2027-06-09"
  * Versicherungsschutz 
    * Beginn = "2009-06-08"
//  * Ende (ohne)
//* DMP (ohne)
//  * DMP
//  * Beginn
//  * Ende
//  * digitalesDMP
//* Kostenerstattung
//  * AerztlicheVersorgung
//  * ZahnaerztlicheVersorgung
//  * StationaererBereich
//  * VeranlassteLeistungen
//* RuhenderLeistungsanspruch
//  * Beginn
//  * Ende
//  * Art
  * Versichertenart = #3 // Familienversicherter
