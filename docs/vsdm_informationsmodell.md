# Hinweise zum Informationsmodell VSDM 2.0

Mit der Einführung von VSDM 2.0 gibt es Änderungen Informationsmodell im Vergleich zum bestehenden Informationsmodell für VSDM 1.0 in der Schemaversion 5.2.

## Änderungen

### 1. MXID des Versicherten

Die Versichertenstammdaten in VSDM 2.0 werden die TI-Messenger Adresse des Versicherten beinhalten.

Die MXID (die Matrix ID) eines Versicherten ist die Adresse, mit der Versicherte über den TI-Messenger erreichbar sind. Die MXID ist z.B. vergleichbar mit einer Email Adresse. Ist die MXID einer Person bekannt, kann diese über einen TI-Messenger angeschrieben werden.

Die MXIDs der Versicherten werden von den Kostenträgern erzeugt, verwaltet und bereitgestellt. 

Die MXID wird nach folgender Bildungsregel erzeugt:

@<KVNR>:<Matrix-Domain der Krankenkasse für Versicherte>

**Beispiel einer MXID**

@Y234567890:tk-matrix-homeserver.de



### 2. Zusatzinformationen zum Versicherungsverhältnis

Zu folgenden Angaben zum Versicherungsverhältnis gibt es in VSDM 2.0 Anpassungen:

#### 2.1 Selektivverträge

Die Angabe der Selektivverträge entfällt und wird durch die Angabe der Wahltarife ersetzt.

#### 2.2 Wahltarife

Wahltarife ersetzt die Angabe der Selektivverträge und bildet ein Kennzeichen für die Rechtsgrundlage des jeweiligen Wahltarifs ab. Die Angabe ist optional.

| Gesetzliche Grundlage | Inhalt | Werte |
| :--------------------- | :------------------------------------ | :------|
| 291a Absatz 3 Nr. 1 SGB V | Angabe von bis zu 3 Wahltarifen mit Beginn- und Endedatum und Vertragskennzeichen | 1 = §73b SGB V, 2=  §140a SGB V, 3 = Sonstige Verträge |

Anmerkung:

§73b SGB V = Hausarztzentrierte Versorgung

§140a SGB V = besondere Versorgung


#### 2.3 DMP-Kennzeichnung

Die Angabe zur Teilnahme des Versicherten an DMP-Programmen wird erweitert.

| Gesetzliche Grundlage | Inhalt | Werte |
| :--------------------- | :------------------------------------ | :------|
| 291a Absatz 3 Nr. 2 SGB V | DMP: Angabe des/der DMP-Programme für die der Versicherte eingeschrieben ist |  Werte gem. Schlüsseltabelle |
| 291a Absatz 3 Nr. 2 SGB V | Angabe des Beginn- und Endedatums für jedes angegebene DMP  |  Datum  | 
| 291a Absatz 3 Nr. 2 SGB V | Angabe der Information, ob ein digitales DMP vorhanden ist  |  ja / nein  | 


#### 2.4 Kostenträger-Angabestatus

Für die Angaben zu
- DMP
- Wahltarife
- Kostenerstattung
- Zuzahlungsstatus
- Ruhender Leistungsanspruch

wird das Feld **Kostenträger-Angabestatus** eingeführt.

Das Feld drückt aus, ob der Kostenträger das Feld grundsätzlich befüllt wenn Informationen vorhanden sind oder ob der Kostenträger die Informationen nicht in den VSD für den LE zur Verfügung stellt.
Es kann Gründe für die Krankenkasse geben, dieses Feld nicht zu befüllen obwohl die Daten vorliegen, z.B. die Teilnahme an einem DMP-Programm. 

Der Leistungserbringer erhält in diesem Fall keine Information darüber und muss dann bei gegebenem Anlass in Kontakt mit der Krankenkasse treten, um Informationen zu diesen Vertragsverhältnissen zu erhalten.






