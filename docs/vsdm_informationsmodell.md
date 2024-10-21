# Hinweise zum Informationsmodell VSDM 2.0

Mit der Einführung von VSDM 2.0 gibt es Änderungen Informationsmodell im Vergleich zum bestehenden Informationsmodell für VSDM 1.0 in der Schemaversion 5.2.

## Änderungen

### MXID des Versicherten

Die MXID (Maschinelle eXterne Identifikationsnummer) ist eine eindeutige Identifikationsnummer für Versicherte im deutschen Gesundheitswesen. Sie wird verwendet, um Versicherte eindeutig zu identifizieren, vor allem in elektronischen Prozessen und beim Datenaustausch zwischen Krankenkassen, Leistungserbringern und weiteren Beteiligten.

Die MXID wird folgendermaßen gebildet:

- Anfangsbuchstabe der Krankenkasse: Der erste Buchstabe der Krankenkasse (z. B. „A“ für AOK, „T“ für Techniker Krankenkasse usw.).

- Versichertennummer: Die eigentliche Versichertennummer des Patienten bei der Krankenkasse. Diese Nummer besteht aus einer Kombination aus Buchstaben und Zahlen und ist in der Regel 10-stellig.

- Prüfziffer: Eine zusätzliche Prüfziffer, die an die Versichertennummer angehängt wird. Diese wird auf Basis eines algorithmischen Verfahrens berechnet, um Eingabefehler zu verhindern.

**Beispiel-Code einer MXID**
.....



### Zusatzinformationen zum Versicherungsverhältnis

Zu folgenden Angaben zum Versicherungsverhältnis gibt es in VSDM 2.0 Anpassungen:

**Selektivverträge**

Die Angabe der Selektivverträge entfällt und wird durch die Angabe der Wahltarife ersetzt.

**Wahltarif**

Wahltarif ersetzt die Angabe der Seltivverträge und bildet ein Kennzeichen für die Rechtsgrundlage des jeweiligen Wahltarifs ab. Die Angabe ist optional.

| Gesetzliche Grundlage | Inhalt | Werte |
| :--------------------- | :------------------------------------ | :------|
| 291a Absatz 3 Nr. 1 SGB V | Angabe von bis zu 3 Wahltarifen mit Beginn- und Endedatum und Vertragskennzeichen | 1 = §73b SGB V, 2=  §140a SGB V, 3 = Sonstige Verträge |

Anmerkung:

§73b SGB V = Hausarztzentrierte Versorgung

§140a SGB V = besondere Versorgung

**DMP-Kennzeichnung**

Die Angabe zur Teilnahme des Versicherten an DMP-Programmen wird erweitert.

| Gesetzliche Grundlage | Inhalt | Werte |
| :--------------------- | :------------------------------------ | :------|
| 291a Absatz 3 Nr. 2 SGB V | DMP: Angabe des/der DMP-Programme für die der Versicherte eingeschrieben ist |  Werte gem. Schlüsseltabelle |
| 291a Absatz 3 Nr. 2 SGB V | Angabe des Beginn- und Endedatums für jedes angegebene DMP  |  Datum  | 
| 291a Absatz 3 Nr. 2 SGB V | Angabe der Information, ob ein digitales DMP vorhanden ist  |  ja / nein  | 





**Anmerkung**
Für die Nachfolgend aufgeführten Informationen zum Versicherungsverhältnis wird die zusätzliche Angabe eingeführt, ob das Feld von der zuständigen Krankenkasse befüllt wird. Es kann Gründe für die Krankenkasse geben, dieses Feld nicht zu befüllen obwohl die Daten vorliegen, z.B. die Teilnahme an einem DMP-Programm. 

Der Leistungserbringer erhält in diesem Fall keine Information darüber und muss ggf. in Kontakt mit der Krankenkasse treten, um Informationen zu diesen Vertragsverhältnissen zu erhalten.

Das betrifft die Angaben zu:
- DMP
- Wahltarife
- Kostenerstattung
- Zuzahlunsgstatus
- Ruhender Leistungsanspruch





