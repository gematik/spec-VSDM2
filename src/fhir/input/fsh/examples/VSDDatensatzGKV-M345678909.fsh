Instance: VSDDatensatzGKV-M345678909
InstanceOf: VSDDatensatzGKV
Title: "M345678909 Mittelspecht, Michael-Martin (GKV)"
Description: "Testdatensatz M345678909 Mittelspecht, Michael-Martin (GKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "M345678909"
    * Geburtsdatum = "2020-04-27"
    * Vorname = "Michael-Martin"
    * Nachname = "Mittelspecht"
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
      * Postleitzahl = "80331"
      * Ort = "München"
      * Wohnsitzlaendercode = #D
      * Strasse = "Spechtstraße"
      * Hausnummer = "130"
      * Anschriftenzusatz = "c/o Baumklopfer"

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger München-Stadt"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "108416806"
//* AbrechnenderKostentraeger (ohne)
//  * Name
//  * Kostentraegerlaendercode
//  * Kostentraegerkennung
  * WOP = #71 // Bayern
//* BesonderePersonengruppe (ohne)
  * Zuzahlungsstatus
    * Status = true
    * GueltigBis = "2038-04-28"
  * Versicherungsschutz 
    * Beginn = "2020-04-27"
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
