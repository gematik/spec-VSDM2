Instance: VSDDatensatzGKV-K123456781
InstanceOf: VSDDatensatzGKV
Title: "K123456781 Kiebitz, Karin"
Description: "Testdatensatz K123456781 Kiebitz, Karin"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "K123456781"
    * Geburtsdatum = "1933" // nur Jahr bekannt
    * Vorname = "Karin"
    * Nachname = "Kiebitz"
    * Geschlecht = #W
//  * Vorsatzwort (ohne)
//  * Namenszusatz (ohne)
//  * Titel (ohne)
    * PostfachAdresse
      * Postleitzahl = "1120"
      * Ort = "Luxembourg"
      * Postfach = "554433"
      * Wohnsitzlaendercode = #L
//  * StrassenAdresse (ohne)
//    * Postleitzahl
//    * Ort
//    * Wohnsitzlaendercode
//    * Strasse
//    * Hausnummer
//    * Anschriftenzusatz (ohne)

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Kassel"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "105532787"
  * AbrechnenderKostentraeger
    * Name = "Beispielkostenträger Koblenz"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "106339922"
  * WOP = #46 // Hessen
//* BesonderePersonengruppe (ohne)
//* Zuzahlungsstatus (ohne)
//  * Status 
//  * GueltigBis
  * Versicherungsschutz 
    * Beginn = "1971-07-01"
//  * Ende (ohne)
//* DMP (ohne)
//  * DMP
//  * Beginn
//  * Ende
//  * digitalesDMP
  * Kostenerstattung
    * AerztlicheVersorgung = true
    * ZahnaerztlicheVersorgung = false
    * StationaererBereich = true
    * VeranlassteLeistungen = false
  * RuhenderLeistungsanspruch
    * Beginn = "2024-06-15"
//  * Ende
    * Art = #2 // eingeschränkt
  * Versichertenart = #5 // Rentner und ihre Familienangehörigen 
