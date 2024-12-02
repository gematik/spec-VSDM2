# VSD vom Fachdienst abrufen
Der Anwendungsfall ermöglicht dem Leistungserbringer,
- das gültige Versicherungsverhältnis beim erstmaligen Quartalsbesuch zu prüfen,
- die jeweils zum Besuch aktuellen VSD und
- die Prüfziffer für die Abrechnung zu erhalten

Voraussetzungen für die Durchführung des VSDM-Anwendungsfalls ist die Herstellung des Versorgungskontextes. Versorgungskontext bedeutet, dass ein Zusammenhang zwischen einem berechtigten Versicherten und einer behandelnden oder versorgenden Leistungserbringerinstitution (LEI) hergestellt wird.

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
| 3 | 1. x im Quartal | unbekannter Versicherter | mit Aktualisierung | Übertragung VSD und Anlage Patientenstammblatt |
| 4 | Folgebesuch | bekannter Versicherter | ohne Aktualisierung | keine Übertragung VSD |
| 5 | Folgebesuch | bekannter Versicherter | mit Aktualisierung | Übertragung VSD und Aktualisierung Patientenstammblat |


## Standardablauf Abruf VSD 

**Eingangsbedingung:**
- Abruf der VSD erfolgt erstmalig im laufenden Quartal
- Versicherter authentisiert sich mit eGK oder GesundheitsID
- LEI ist am PoPP-Service registriert und angemeldet
- Dienstlokalisierung am FD VSDM 2.0 ist erfolgt (alle 24 Stunden)

**Voraussetzungen:**
- Versorgungskontext ist in Form eines vorliegenden PoPP-Tokens attestiert
- PoPP-Token liegt im PS vor
- KVNR und IK-Nummer sind im PS gespeichert (z.B. im Patientenstammblatt)

| Nr | Aktivität | Komponente | Beschreibung |
| -- | :-------- | :----------- | :---------- |
| 1 | VSD am FD anfragen | PS | Zur Anfrage an den zuständigen Fachdienst wird der gültige Versorgungskontextnachweis in Form eines PoPP-Tokens, der Access-Token und der VSD-Änderungsindikator (ETag) übertragen. ETag muss auf "0" gesetzt werden wenn noch kein Änderungsindikator vorliegt |
| 2 | Access-Token prüfen | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters prüft auf gültigen Access-Token und leitet den Request an den FD weiter. |
| 3 | PoPP-Token prüfen | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters prüft auf gültigen PoPP-Token und leitet den Request an den FD weiter. |
| 4 | KVNR übermitteln | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters übermittelt dem FD VSDM die KVNR in Form des Elements patientId des HTTP-Headers ZETA-PoPP-Token-Content zur Lokalisierung der VSD-Version und der Versichertenstammdaten. |
| 5 | VSD-Version prüfen | FD | Der FD führt beim Aufruf der HTTP-GET-Operation vor der Verarbeitung eines Versichertenstammdatensatzes eine VSD-Aktualitätsprüfung durch |
| 6 | VSD lokalisieren | FD | Der FD führt bei Unterschieden in der VSD Version zwischen PS und FD eine Lokalisierung der VSD anhand der KVNR durch und ruft diese ab |
| 7 | PZ und ggf. VSD übermitteln | FD | Der FD übermittelt die Prüfziffer, den etag_value und bei Unterschieden in der VSD Version die VSD an den HTTP-Proxy des ZT-Clusters |
| 8 | PZ und ggf. VSD an PS übermitteln | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters übermittelt die Prüfziffer, den etag_value und bei Unterschieden in der VSD Version die VSD an das PS |
| 9 | PZ und ggf. VSD speichern | PS | Die übermittelte PZ, der etag_value und bei Unterschieden in der VSD Version die VSD werden gespeichert |

**Nachbedingung**
- PS: Die VSD im Patientenstammblatt wurden aktualisiert / sind aktuell
- PS: Die Prüfziffer ist im PS gespeichert
- PS: der etag_value wurde aktualisiert

**Hinweise zum Entity Tag (ETag)**

Der ETag oder auch VSD-Änderungsindikator dienst dazu, die Version der VSD eindeutig zu identifizieren. Der ETag selbst ist eine Zeichenkette.
Erhält das PS Versichertenstammdaten vom Fachdienst VSDM 2.0 wird durch diesen auch ein ETag übertragen. Dieser wird im PS gespeichert und darf nicht verändert werden. Wird ein erneuter Abruf der VSD gestartet, überträgt das PS diesen ETag. Der Fachdienst vergleicht den Wert des ETags mit dem VSD-Änderungsindikator des Fachdienstes. Stimmen die Werte des ETags aus dem Request und des VSD-Änderungsindikators nicht überein, werden als Ergebnis die VSD an das PS gesendet.
Liegt dem PS bei einer Anfrage an den Fd noch kein VSD-Änderungsindikator vor, muss der ETag Wert durch das PS auf Null gesetzt werden.


# VSD von eGK lesen
Dieser Anwendungsfall kommt dann zum tragen, wenn die VSD nicht online vom Fachdienst der Kasse abgerufen werden können. Die LEI muss dann in der Lage sein, die vorhandenen Daten von der eGk zu lesen, anzuzeigen und speichen zu können. Die erhaltenen Daten dienen dann zur Nutzung von bereits etablierten Ersatzverfahren ausserhalb des VSDM 2.0.
Das PS muss in der Lage sein, die eGK mit den in der LEI vorhandenen Kartenlesegeräten auslesen zu können. Das können sowohl eHealth-Kartenterminals als auch handelsübliche Smartcard-Reader sein. 
Die Daten werden aus dem ungeschützten Bereich der eGK aus den Containern PD und VD gelesen.
Zu beachten ist, dass sich auf der eGk einseits der komplette VSD-Datensatz und andererseits auch ein verkürzter Datensatz befinden kann. Keiner dieser Datensätze kann jedoch den notwendigen Abruf der VSD im laufenden Quartal ersetzen da es sich lediglich um statische Daten auf der eGK handelt, die nicht aktualisert werden.

Hier ist ein Beispielprogramm zum Auslesen der eGK wenn ein Standardkartenleser verwendet wird:

[Beispielprogramm zum Auslesen der eGK](/src/examples/eGKRead.java)

Hinweis 1: Die Daten werden ausgelesen und decodiert in einer Log-Datei angezeigt (auch als XML).
Hinweis 2: Das Programm prüft NICHT die Echtheit der eGK.


