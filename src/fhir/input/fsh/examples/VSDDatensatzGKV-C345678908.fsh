Instance: VSDDatensatzGKV-C345678908
InstanceOf: VSDDatensatzGKV
Title: "C345678908 Carolinataube, Charlie (GKV)"
Description: "Testdatensatz C345678908 Carolinataube, Charlie (GKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "C345678908"
    * Geburtsdatum = "1979-06-11"
    * Vorname = "Charlie"
    * Nachname = "Carolinataube"
    * Geschlecht = #D
//  * Vorsatzwort (ohne)
//  * Namenszusatz (ohne)
//  * Titel (ohne)
//  * PostfachAdresse (ohne)
//    * Postleitzahl
//    * Ort
//    * Postfach
//    * Wohnsitzlaendercode
    * StrassenAdresse 
      * Postleitzahl = "09128"
      * Ort = "Chemnitz"
      * Wohnsitzlaendercode = #D
      * Strasse = "Taubenweg"
      * Hausnummer = "3c"
      * Anschriftenzusatz = "zweites Hinterhaus links"

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Chemnitz"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "107723372"
//* AbrechnenderKostentraeger (ohne)
//  * Name
//  * Kostentraegerlaendercode
//  * Kostentraegerkennung
  * WOP = #98 // Sachsen
//* BesonderePersonengruppe (ohne)
//* Zuzahlungsstatus (ohne)
//  * Status 
//  * GueltigBis
  * Versicherungsschutz 
    * Beginn = "1979-06-11"
    * Ende = "2027-01-01"
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
    * VeranlassteLeistungen = true
//* RuhenderLeistungsanspruch
//  * Beginn
//  * Ende
//  * Art
  * Versichertenart = #1 // Mitglied
