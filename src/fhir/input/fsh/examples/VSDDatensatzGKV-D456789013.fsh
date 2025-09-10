Instance: VSDDatensatzGKV-D456789013
InstanceOf: VSDDatensatzGKV
Title: "D456789013 Dohle, Dara (GKV)"
Description: "Testdatensatz D456789013 Dohle, Dara (GKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "D456789013"
    * Geburtsdatum = "1970-01-20"
    * Vorname = "Dara"
    * Nachname = "Dohle"
    * Geschlecht = #X
//  * Vorsatzwort (ohne)
//  * Namenszusatz (ohne)
    * Titel = "Dr. rer. nat."
    * PostfachAdresse 
      * Postleitzahl = "64283"
      * Ort = "Darmstadt"
      * Postfach = "405060"
      * Wohnsitzlaendercode = #D
    * StrassenAdresse 
      * Postleitzahl = "64297"
      * Ort = "Darmstadt"
      * Wohnsitzlaendercode = #D
      * Strasse = "Dohlenallee"
      * Hausnummer = "4-6"
//    * Anschriftenzusatz (ohne)

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Darmstadt"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "105266989"
//* AbrechnenderKostentraeger (ohne)
//  * Name
//  * Kostentraegerlaendercode
//  * Kostentraegerkennung
  * WOP = #46 // Hessen
  * BesonderePersonengruppe = #6 // SER (Soziales Entschädigungsrecht)
//* Zuzahlungsstatus (ohne)
//  * Status 
//  * GueltigBis
  * Versicherungsschutz 
    * Beginn = "2021-10-01"
//  * Ende (ohne)
  * DMP
    * DMP = #5 // Asthma bronchiale 
    * Beginn = "2022-01-01"
//  * Ende
    * digitalesDMP = false
  * Kostenerstattung
    * AerztlicheVersorgung = true
    * ZahnaerztlicheVersorgung = true
    * StationaererBereich = true
    * VeranlassteLeistungen = true
//* RuhenderLeistungsanspruch
//  * Beginn
//  * Ende
//  * Art
  * Versichertenart = #3 // Familienversicherter
