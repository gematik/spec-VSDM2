Instance: VSDDatensatzPKV-A123456780
InstanceOf: VSDDatensatzPKV
Title: "A123456780 Amsel, Andrea (PKV)"
Description: "Testdatensatz A123456780 Amsel, Andrea (PKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * VersichertenID = "A123456780"
  * Geburtsdatum = "1997-12-28"
  * Vorname = "Andrea"
  * Nachname = "Amsel"
  * Geschlecht = #W
//* Vorsatzwort (ohne)
//* Namenszusatz (ohne)
//* Titel (ohne)
//* Postfachadresse (ohne)
//  * Postfach
//  * Postleitzahl
//  * Ort
//  * Land
  * Wohnsitzadresse 
    * Strasse = "Amselweg"
    * Hausnummer = "1"
//  * Anschriftenzusatz (ohne)
    * Postleitzahl = "52070"
    * Ort = "Aachen"
    * Land = #DE
  * TIMessengerID = "@a123456780:demo-ti-messenger"

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Privatversicherung Pluto"
    * Kostentraegerkennung = "168112342"
  * Versicherungsschutz
    * Beginn = "2020-01-01"
//  * Ende (ohne)
//* Beihilfe (ohne)
//  * Beihilfeanspruch 
//  * QuotePKV
  * Krankenhausleistungen 
    * Allgemein = 100
    * Zweibettzimmer = 100
    * Einbettzimmer = 100
//  * ZweiEinbettDifferenz (ohne)
    * WahlarztUnsignedInt = 100
    * BelegarztUnsignedInt = 100
//* Sozialtarif (ohne)
  * Versichertenart = #VN 
  * Hinweis 
    * Hinweistext = "Beihilfetaxe für Physio"
//  * Institutionstypen (ohne)
