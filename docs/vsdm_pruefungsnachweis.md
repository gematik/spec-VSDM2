# Hinweise zum Prüfungsnachweis

Wie auch bereits in VSDM 1.0 wird auch mit VSDM 2.0 ein Prüfungsnachweis an das Primärsystem übergeben. 

Bei einer erfolgreichen Durchführung des Abrufs VSD wird 
  - bei erstmaligem Abruf im laufenden Quartal der Prüfungsnachweis in Verbindung mit den VSD und
  - bei jedem weiteren Abruf der VSD im laufenden Quartal der Prüfungsnachweis unabhängig davon, ob sich Änderungen in den VSD ergeben haben

an das Primärsystem übermittelt.

Das Primärsystem muss den Prüfungsnachweis zur Erstellung der Abrechnungsunterlagen speichern. 

Dieser Leitfaden zur Implementierung trifft keine Aussage darüber, ob jeder im laufenden Quartal erhaltene Prüfungsnachweis gespeichert werden muss oder eine Überschreibung des vorhandenen Prüfungsnachweises erfolgen soll. 

Die Regelungen dazu werden im Anforderungskatalog KVDT (KBV_ITA_VGEX_Anforderungskatalog_KVDT) getroffen und müssen durch das Primärsystem entsprechend umgesetzt werden.

Anmerkung: Ein im Rahmen der Herstellung des Versorgungskontextes übermittelter Prüfungsnachweis vom PoPP-Service kann nicht für die Abrechnungsunterlagen zur Einreichung an die KV verwendet werden.

# Struktur des Prüfungsnachweises
Der Fachdienst VSDM 2.0 muss den Prüfungsnachweis entsprechend dem Infomodell erzeugen und mit den in der nachfolgenden Tabelle aufgezählter Feldern befüllen.

|  |  |
| ----------------- | --------------------- | 
| CDM_Version | CDMVersion |
| Timestamp | Aktueller Zeitstempel UTC |
| Ergebnis | Ergebnis Abruf VSD |
| ErrorCode | ... |
| Prüfziffer | Vom Fachdienst VSDM 2.0 gesendete Prüfziffer |

Zur Erstellung eines Abrechnungsdatensatzes überträgt die Abrechnungssoftware die Inhalte der im Prüfungsnachweis enthaltenen Elemente gemäß Anforderungskatalog KVDT (KBV_ITA_VGEX_Anforderungskatalog_KVDT):
- Timestamp
- Ergebnis
- ErrorCode
- Prüfziffer (base64-codiert ohne Zeilenumbrüche)

Das Element **Ergebnis** liefert keinen Hinweis mehr über das Ergebnis einer Aktualisierung, da die VSD nicht mehr auf die eGK geschrieben werden, sondern direkt an das PS gesendet werden. Daher kann dieses Element nur einen Wert enthalten der aussagt, dass der Abruf VSD erfolgt ist.

Das Element **ErrorCode** kann in VSDM 2.0 keinen validen Error-Code enthalten, da in einem Fehlerfall (z.B. Nichterreichbarkeit) der Fachdienst keine VSD und den Prüfungsnachweis liefert. Hierfür wird ein Wert als Platzhalter definiert.

[XMl-Schema Prüfungsnachweis VSDM 2.0](docs/vsdm_pruefungsnachweis.md)


# Prüfziffer

## Struktur der Prüfziffer

| Nr | Feld | Format | Länge |
| ---- | ---- |---- | ---- | 
| 1 | 10-stelliger unveränderlicher Teil der KVNR | alphanummerisch | 10 |
| 2 | aktueller Unix Timestamp (bspw. "1673551622") | alphanummerisch | 10 |
| 3 | Ausstellender Dienst: 2 = VSDM 2.0 | alphanummerisch | 1 |
| 4 | Kennung des Betreibers Fachdienste VSDM gemäß Liste der gematik | alphanummerisch | 1 |
| 5 | Für den Betreiber des Fachdienstes spezifische Version des HMAC-Schlüssels | alphanummerisch | 1 |
| 6 | Es wird ein HMAC nach A_23461-* über die konkatenierten Felder 1-5 mittels des betreiberspezifischen Schlüssel berechnet.  Dieser berechnete HMAC-Wert (256-Bit) wird auf 192 Bit (also 24 Byte) gekürzt (die ersten 24 Byte des HMAC-Wertes werden verwendet, die restlichen 8 Byte werden verworfen). Dieser gekürzte HMAC-Wert ist das 6-te Datenfeld. | binär | 24 |


# Zeichenkodierung von Daten

Das Primärsystem muss den vom Fachdienst gelieferten Prüfungsnachweis aus dem HTTP-Header VSDM-Pn extrahieren, BASE64URL dekodieren sowie mittels gzip dekomprimieren. Danach steht das XML-Element Prüfungsnachweis zur weiteren Verarbeitung im Primärsystem zur Verfügung.

Beispiel einer dekomprimierten Prüziffer aus einerm Prüfungsnachweis (XML-Datei)
| dekomprimierte Prüfziffer |
| :----------                |
| <PZ>VDAyMzU5MDA1MDE3MjY3Mzc2MDFVVDLYyBOm+EDF0oe1aW/ndQe2p36MGAzvyBk=</PZ> |

Beispiel einer dekodierten (Base64) Prüfziffer aus dem Prüfungsnachweis
| Prüfziffer |
| :---------- |
| T0235900501726737601UT2ØÈ¦ø@ÅÒ‡µioçu¶§~ŒïÈ |







