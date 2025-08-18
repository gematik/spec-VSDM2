Instance: VSDDatensatzGKV-B234567895
InstanceOf: VSDDatensatzGKV
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Description: "Testdatensatz B234567895 Graf von und zu Buntspecht, Bernd Benjamin"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "B234567895"
    * Geburtsdatum = "1988-06-22"
    * Vorname = "Bernd Benjamin"
    * Nachname = "Buntspecht"
    * Geschlecht = #M
    * Vorsatzwort = "von und zu"
    * Namenszusatz = "Graf"
    * Titel = "Dr. med."
//  * PostfachAdresse (ohne)
//    * Postleitzahl
//    * Ort
//    * Postfach
//    * Wohnsitzlaendercode
    * StrassenAdresse 
      * Postleitzahl = "28211"
      * Ort = "Bremen"
      * Wohnsitzlaendercode = #D
      * Strasse = "Buntspechtallee"
      * Hausnummer = "2a"
//    * Anschriftenzusatz (ohne)

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Bremen"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "103169760"
  * AbrechnenderKostentraeger
    * Name = "Beispielkostenträger Bremerhaven"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "103215857"
  * WOP = #03 // Bremen
  * BesonderePersonengruppe = #4 // BSHG (Bundessozialhilfegesetz) § 264 SGB V
//* Zuzahlungsstatus (ohne)
//  * Status 
//  * GueltigBis
  * Versicherungsschutz 
    * Beginn = "2011-04-01"
    * Ende = "2024-12-31"
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
