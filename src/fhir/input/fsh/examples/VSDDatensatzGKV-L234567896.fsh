Instance: VSDDatensatzGKV-L234567896
InstanceOf: VSDDatensatzGKV
Title: "L234567896 Lachmöwe, Lisa"
Description: "Testdatensatz L234567896 Lachmöwe, Lisa"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * Versicherter
    * VersichertenID = "L234567896"
    * Geburtsdatum = "2022-07-02"
    * Vorname = "Lisa"
    * Nachname = "Lachmöwe"
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
      * Postleitzahl = "21337"
      * Ort = "Lüneburg"
      * Wohnsitzlaendercode = #D
      * Strasse = "Möwenstraße"
      * Hausnummer = "12b"
//    * Anschriftenzusatz (ohne)

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Beispielkostenträger Lüneburg"
    * Kostentraegerlaendercode = #D
    * Kostentraegerkennung = "102343996"
//* AbrechnenderKostentraeger (ohne)
//  * Name
//  * Kostentraegerlaendercode
//  * Kostentraegerkennung
  * WOP = #17 // Niedersachsen
//* BesonderePersonengruppe (ohne)
  * Zuzahlungsstatus
    * Status = true
    * GueltigBis = "2040-07-02"
  * Versicherungsschutz 
    * Beginn = "2022-07-02"
//  * Ende (ohne)
//* DMP (ohne)
//  * DMP
//  * Beginn
//  * Ende
//  * digitalesDMP
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
