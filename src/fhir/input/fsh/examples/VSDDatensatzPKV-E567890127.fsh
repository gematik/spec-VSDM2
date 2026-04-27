Instance: VSDDatensatzPKV-E567890127
InstanceOf: VSDDatensatzPKV
Title: "E567890127 Freifrau an der Elster, Elke (PKV)"
Description: "Testdatensatz E567890127 Freifrau an der Elster, Elke (PKV)"
Usage: #inline // to prevent SUSHI from generating JSON files that confuse many other tools downstream

* Versichertendaten
  * VersichertenID = "E567890127"
  * Geburtsdatum = "1992-11-13"
  * Vorname = "Elke"
  * Nachname = "Elster"
  * Geschlecht = #W
  * Vorsatzwort = "an der"
  * Namenszusatz = "Freifrau"
//* Titel (ohne)
  * Postfachadresse
    * Postfach = "9821"
    * Postleitzahl = "8055"
    * Ort = "Graz"
    * Land = #AT
  * Wohnsitzadresse 
    * Strasse = "Elsterstraße"
    * Hausnummer = "5"
//  * Anschriftenzusatz (ohne)
    * Postleitzahl = "99095"
    * Ort = "Erfurt"
    * Land = #DE
  * TIMessengerID = "@e567890127:demo-ti-messenger"

* Versicherungsdaten 
  * Kostentraeger 
    * Name = "Privatversicherung Jupiter"
    * Kostentraegerkennung = "168156788"
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
    * WahlarztBoolean = false
    * BelegarztBoolean = false
  * Sozialtarif = #S // Standardtarif
  * Versichertenart = #VN 
//* Hinweis (ohne)
//  * Hinweistext 
//  * Institutionstypen
