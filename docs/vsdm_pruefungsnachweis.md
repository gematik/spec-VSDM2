# Hinweise zur Prüfziffer

Im Gegensatz zu VSDM 1.0 wird mit VSDM 2.0 kein Prüfungsnachweis mehr an das Primärsystem übergeben. 

Bei einer erfolgreichen Durchführung des Abrufs VSD wird 
  - bei erstmaligem Abruf im laufenden Quartal die Prüfziffer in Verbindung mit den VSD und
  - bei jedem weiteren Abruf der VSD im laufenden Quartal die Prüfziffer unabhängig davon, ob sich Änderungen in den VSD ergeben haben

an das Primärsystem übermittelt.

Das Primärsystem muss die Prüfziffer zur Erstellung der Abrechnungsunterlagen speichern. 

Dieser Leitfaden zur Implementierung trifft keine Aussage darüber, ob jede im laufenden Quartal erhaltene Prüfziffer gespeichert werden muss oder eine Überschreibung der vorhandenen Prüfziffer erfolgen soll. 

Die Regelungen dazu werden im Anforderungskatalog KVDT (KBV_ITA_VGEX_Anforderungskatalog_KVDT) getroffen und müssen durch das Primärsystem entsprechend umgesetzt werden.


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










