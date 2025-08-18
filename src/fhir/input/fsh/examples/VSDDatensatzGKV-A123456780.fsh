Instance: VSDDatensatzGKV-A123456780
InstanceOf: VSDDatensatzGKV
Title: "A123456780 Amsel, Andrea"
Description: "Testdatensatz A123456780 Amsel, Andrea"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "A123456780"
    * Geburtsdatum = "1997-12-28"
    * Vorname = "Andrea"
    * Nachname = "Amsel"
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
      * Postleitzahl = "52070"
      * Ort = "Aachen"
      * Wohnsitzlaendercode = #D
      * Strasse = "Amselweg"
      * Hausnummer = "1"
//    * Anschriftenzusatz (ohne)

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Aachen"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "104178397"
//* AbrechnenderKostentraeger (ohne)
//  * Name
//  * Kostentraegerlaendercode
//  * Kostentraegerkennung
  * WOP = #38 // Nordrhein
//* BesonderePersonengruppe (ohne)
//* Zuzahlungsstatus (ohne)
//  * Status 
//  * GueltigBis
  * Versicherungsschutz 
    * Beginn = "1997-12-28"
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
  * Versichertenart = #1 // Mitglied
