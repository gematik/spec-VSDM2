# VSD vom Fachdienst abrufen
Der Anwendungsfall ermöglicht dem Leistungserbringer,
- das gültige Versicherungsverhältnis beim erstmaligen Quartalsbesuch zu prüfen,
- die jeweils zum Besuch aktuellen VSD und
- den Prüfungsnachweis für die Abrechnung zu erhalten

Vorraussetzungen für die Durchführung des VSDM-Anwendungsfalls ist die Herstellung des Versorgungskontextes. Versorgungskontext bedeutet, dass ein Zusammenhang zwischen einem berechtigten Versicherten und einer behandelnden oder versorgenden Leistungserbringerinstitution (LEI) hergestellt wird.

Der Versorgungskontext wird durch die folgenden Schritte realisiert:
- Authentisierung der LEI am PoPP-Service mittels einer SM-B Identität (Karte oder HSM)
- Authentisierung des Versicherten mittels eGK oder GesundheitsID

Nach der erfolgreichen Authentisierung der LEI und des Versicherten wird das Vorhandensein des Versorgungskontextes in Form eines PoPP-Tokens, welcher an das PS übergeben wird, attestiert. Anschließend kann das Primärsystems den PoPP-Token als Autorisierung verwenden, um den Abruf der Versichertenstammdaten am Fachdienst VSDM 2.0 durchzuführen. Die Herstellung des Versorgungskontextes ist nur beim ersten Besuch des Versicherten im laufenden Quartal notwendig. Bei Folgebesuchen wird der im PS bereits vorhandene PoPP-Token für jeden weiteren Abruf der VSD im laufenden Quartal verwendet.

Die Authentisierung der LEI gegenüber dem PoPP-Dienst und gegenüber dem Fachdienst ist einmal am Tag erforderlich.
Zukünftig kann der Versicherte auch die GesundheitsID in Verbindung mit einem Frontend des Versicherten (FdV) nutzen, um sich gegenüber dem PoPP-Dienst zu authentisieren.

Die Anwendungsfälle zur Authentisierung des Versicherten und der LEI sind im Dokument [gemSpec_PoPP_Service] beschrieben.

**Übersicht der Varianten beim Abruf VSD**

Die nachfolgend aufgeführte Tabelle stellt die möglichen Varianten des Anwendungsfalls Abruf VSD dar.

Tabelle Übersicht Varianten Abruf VSD
| Variante | Art des Besuchs | Versicherter | VSD | Bemerkung |
| :-- | :---------- | :---------- | :---------- | ------------ |
| 1 | 1. x im Quartal | bekannter Versicherter | ohne Aktualisierung | keine Übertragung VSD |
| 2 | 1. x im Quartal | bekannter Versicherter | mit Aktualisierung | Übertragung VSD und Aktualisierung Patientenstammblatt |
| 3 | 1. x im Quartal | unbekannter Versicherter | ohne Aktualisierung | Übertragung VSD und Anlage Patientenstammblatt |
| 4 | Folgebesuch | bekannter Versicherter | ohne Aktualisierung | keine Übertragung VSD |
| 5 | Folgebesuch | bekannter Versicherter | mit Aktualisierung | Übertragung VSD und Aktualisierung Patientenstammblat |


## Standardablauf Abruf VSD 

**Eingangsbedingung:**
- Abruf der VSD erfolgt erstmalig im laufenden Quartal
- Versicherter authentisiert sich mit eGK oder GesundheitsID
- LEI ist am PoPP-Service registriert und angemeldet
- Dienstlokalisierung am FD VASM 2.0 ist erfolgt (alle 24 Stunden)

**Vorraussetzungen:**
- Versorgungskontext ist in Form einen vorleigenden PoPP-Tokens attestiert
- PoPP-Token liegt im PS vor
- KVNR und IK-Nummer sind im PS gespeichert (z.B. im Patientenstammblatt)

| Nr | Aktivität | Komponente | Beschreibung |
| -- | :-------- | :----------- | :---------- |
| 1 | VSD am FD abrufen | PS | Zur Anfrage an den zuständigen Fachdienst wird der gültige Versorgungskontextnachweis in Form eines PoPP-Tokens, der Access-Token und der VSD-Änderungsindikator (ETag) übertragen. ETag muss auf "0" gesetzt werden wenn noch kein Änderungsindikator vorliegt |
| 2 | Access-Token prüfen | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters prüft auf gültigen Access-Token und leitet den Request an den FD weiter. |
| 3 | PoPP-Token prüfen | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters prüft auf gültigen PoPP-Token und leitet den Request an den FD weiter. |
| 4 | Versorgungskontext übermitteln | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters übermittelt dem FD VSDM 2.0 die Daten "patient.identifier.value" (KVNR) und patient.proof_time zur Prüfung der zeitlichen Gültigkeit des Versorgungskontextnachweises und Protokollierung  |
| 5 | (zeitliche) Gültigkeit PoPP-Token prüfen | FD | Der FD prüft die zeitliche Gültigkeit des Versorgungskontextes: Wert patient.proofTime zum Zeitpunkt der HTTP-GET-Operation liegt innerhalb des aktuellen Quartals des aktuellen Jahres) |
| 6 | VSD-Version prüfen | FD | Der FD führt beim Aufruf der HTTP-GET-Operation vor dem Abruf des Versichertenstammdatensatzes von dem KTR-Bestandssystem eine VSD-Aktualitätsprüfung durch |
| 7 | PN übermitteln | FD | Der FD übermittelt den PN als XML-Datei und den etag_value an den HTTP-Proxy des ZT-Clusters |
| 7.1 | PN an PS übermitteln | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters übermittelt den PN als XML-Datei und den etag_value an das PS |
| 8 | VSD lokalisieren | FD | Der FD führt eine Lokalisierung der VSD anhand der KVNR am KTR-Bestandssystem durch und ruft diesen ab |
| 8.1 | VSD und PN übermitteln | FD | Der FD übermittelt die VSD als FHIR-Bundle, den PN als XML-Datei und den new_etag_value an den HTTP-Proxy des ZT-Clusters |
| 8.2 | VSD und PN an PS übermitteln | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters übermittelt die VSD als FHIR-Bundle, den PN als XML-Datei und den new_etag_value an das PS |
| 8.3 | VSD speichern | PS | Die übermittelten VSD werden gespeichert oder aktualisiert |
| 9 | PN speichern | PS | Der übermittelte PN wird für das laufende Quartal gespeichert |

**Nachbedingung**
- PS: Die VSD im Patientenstammblatt wurden aktualisiert / sind aktuell
- PS: Prüfungsnachweis ist im PS gespeichert

Hinweis: Die Schritte 7 und 8 bilden keine Reihenfolge im Ablauf ab. Schritt 8 wird nur ausgeführt, wenn beim Vergleich des ETags aus dem Request mit dem Änderungsindikator des Fachdienstes keine Übereinstimmung vorliegt.

**Hinweise zum Entity Tag (ETag)**

Der ETag oder auch VSD-Änderungsindikator dienst dazu, die Version der VSD eindeutig zu identifizieren. Der ETag selbst ist eine Zeichenkette.
Erhält das PS Versichertenstammdaten vom Fachdienst VSDM 2.0 wird durch diesen auch ein ETag übertragen. Dieser wird im PS gespeichert und darf nicht verändert werden. Wird ein erneuter Abruf der VSD gestartet, überträgt das PS diesen ETag. Der Fachdienst vergleicht den Wert des ETags mit dem VSD-Änderungsindikator des Fachdienstes. Stimmen die Werte des ETags aus dem Request und des VSD-Änderungsindikators nicht überein, werden als Ergebnis die VSD an das PS gesendet.
Liegt dem PS bei einer Anfrage an den Fd noch kein VSD-Änderungsindikator vor, muss der ETag Wert durch das PS auf Null gesetzt werden.


# VSD von eGK lesen
Dieser Anwendungsfall kommt dann zum tragen, wenn die VSD nicht online vom Fachdienst der Kasse abgerufen werden können. Die LEI muss dann in der Lage sein, die vorhandenen Daten von der eGk zu lesen, anzuzeigen und speichen zu können. Die erhaltenen Daten dienen dann zur Nutzung von bereits etablierten Ersatzverfahren ausserhalb des VSDM 2.0.
Das PS muss in der Lage sein, die eGK mit den in der LEI vorhandenen Kartenlesegeräten auslesen zu können. Das können sowohl eHealth-Kartenterminals als auch handelsübliche Smartcard-Reader sein. 
Die Daten werden aus dem ungeschützten Bereich der eGK aus den Containern PD und VD gelesen.
Zu beachten ist, dass sich auf der eGk einseits der komplette VSD-Datensatz und andererseits auch ein verkürzter Datensatz befinden kann. Keiner dieser Datensätze kann jedoch den notwendigen Abruf der VSD im laufenden Quartal ersetzen da es sich lediglich um statische Daten auf der eGK handelt, die nicht aktualisert werden.

