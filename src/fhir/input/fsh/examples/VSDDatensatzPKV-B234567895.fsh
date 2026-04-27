Instance: VSDDatensatzPKV-B234567895
InstanceOf: VSDDatensatzPKV
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Description: "Testdatensatz B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * VersichertenID = "B234567895"
  * Geburtsdatum = "1988-06-22"
  * Vorname = "Bernd Benjamin"
  * Nachname = "Buntspecht"
  * Geschlecht = #M
  * Vorsatzwort = "von und zu"
  * Namenszusatz = "Graf"
  * Titel = "Dr. med."
//* Postfachadresse (ohne)
//  * Postfach
//  * Postleitzahl
//  * Ort
//  * Land
  * Wohnsitzadresse 
    * Strasse = "Buntspechtallee"
    * Hausnummer = "2a"
//  * Anschriftenzusatz (ohne)
    * Postleitzahl = "28211"
    * Ort = "Bremen"
    * Land = #DE
  * TIMessengerID = "@b234567895:demo-ti-messenger"

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Privatversicherung Neptun"
    * Kostentraegerkennung = "168123458"
  * Versicherungsschutz
    * Beginn = "1980-01-01"
    * Ende = "2025-12-31"
//* Beihilfe (ohne)
//  * Beihilfeanspruch 
//  * QuotePKV
  * Krankenhausleistungen 
    * Allgemein = 100
    * Zweibettzimmer = 100
//  * Einbettzimmer (ohne)
    * ZweiEinbettDifferenz = 25
    * WahlarztUnsignedInt = 100
    * BelegarztUnsignedInt = 100
//* Sozialtarif (ohne)
  * Versichertenart = #VN 
//* Hinweis (ohne)
//  * Hinweistext 
//  * Institutionstypen
