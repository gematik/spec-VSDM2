Instance: VSDDatensatzGKV-O567890128
InstanceOf: VSDDatensatzGKV
Title: "O567890128 Ortolan, Oliver (GKV)"
Description: "Testdatensatz O567890128 Ortolan, Oliver (GKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "O567890128"
    * Geburtsdatum = "2009-06-08"
    * Vorname = "Oliver"
    * Nachname = "Ortolan"
    * Geschlecht = #M
//  * Vorsatzwort (ohne)
//  * Namenszusatz (ohne)
//  * Titel (ohne)
//  * PostfachAdresse (ohne)
//    * Postleitzahl
//    * Ort
//    * Postfach
//    * Wohnsitzlaendercode
    * StrassenAdresse 
      * Postleitzahl = "77654"
      * Ort = "Offenburg"
      * Wohnsitzlaendercode = #D
      * Strasse = "Gartenammerstraße"
      * Hausnummer = "15"
      * Anschriftenzusatz = "Vorderhaus"

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
