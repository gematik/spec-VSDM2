# VSD vom Fachdienst abrufen
Der Anwendungsfall ermöglicht dem Leistungserbringer,
- das gültige Versicherungsverhältnis beim erstmaligen Quartalsbesuch zu prüfen,
- die jeweils zum Besuch aktuellen VSD und
- den Prüfungsnachweis für die Abrechnung zu erhalten

Um diesen Anwendungsfall ausführen zu können, muss sich das Primärsystem der Leistungserbringerinstitution (LEI) am PoPP-Service unter Verwendung des Zero Trust Access registrieren. Nach der erfolgreichen Registrierung und Anmeldung kann der PoPP-Token erzeugt und abgerufen werden. Sind diese Vorraussetzungen erfüllt, kann der Versorgungskontext mittels Popp-Token attestiert werden. Für die Herstellung des Versorungskontextes kann der Versicherte sowohl die eGK als auch die GesundheitsID nutzen. Die Herstellung des Versorgungskontextes ist nur beim ersten Besuch des Versicherten im laufenden Quartal notwendig. 

**Übersicht**

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
| 1 | VSD am FD abrufen | PS | Zur Anfrage an den zuständigen Fachdienst wird der gültige Versorgungskontextnachweis in Form eines PoPP-Tokens, der Access-Token und der VSD-Änderungsindikator (etag) übertragen. etag muss auf "0" gesetzt werden wenn noch kein Änderungsindikator vorliegt |
| 2 | Access-Token prüfen | FD-Proxy | Der HTTP-Proxy des FD prüft auf gültigen Access-Token und leitet den Request an den FD weiter. |
| 3 | PoPP-Token prüfen | FD-Proxy | Der HTTP-Proxy des FD prüft auf gültigen PoPP-Token und leitet den Request an den FD weiter. |
| 4 | Versorgungskontext übermitteln | FD-Proxy | Der HTTP-Proxy des FD übermittelt dem FD VSDM 2.0 die Daten "patient.identifier.value" (KVNR) und patient.proof_time zur Prüfung der zeitlichen Gültigkeit des Versorgungskontextnachweises und Protokollierung  |
| 5 | (zeitliche) Gültigkeit PoPP-Token prüfen | FD | Der FD prüft die zeitliche Gültigkeit des Versorgungskontextes: Wert patient.proofTime zum Zeitpunkt der HTTP-GET-Operation liegt innerhalb des aktuellen Quartals des aktuellen Jahres) |
| 6 | VSD-Version prüfen | FD | Der FD führt beim Aufruf der HTTP-GET-Operation vor dem Abruf des Versichertenstammdatensatzes von dem KTR-Bestandssystem eine VSD-Aktualitätsprüfung durch |
| 7.1 | PN übermitteln | FD | Der FD übermittelt den PN als XML-Datei an das PS |
| 7.2 | VSD und PN übermitteln | FD | Der FD übermittelt die VSD als FHIR-Bundle an das PS |

| 10 | VSD speichern | PS | Die übermittelten VSD werden gespeichert |
| 11 | PN speichern | PS | Der übermittelte PN wird für das laufende Quartal gespeichert|

**Nachbedingung**
- PS: Die VSD im Patientenstammblatt wurden aktualisiert / sind aktuell
- PS: Prüfungsnachweis ist im PS gespeichert
- FD: ETAG???

Ende des UC unterscheidet sich durch bekannten oder unbekannten Versicherten: anlegen eines Patientenstammblatts neu



### Variante Abruf VSD bei bereits vorliegendem Versorgungskontext (PoPP-Token liegt im PS vor)

**Einhgangsbedingung:** 
- Abruf der VSD erfolgt im Rahmen eines Folgebesuchs des Versicherten

**Voraussetzung:**
- PoPP-Token liegt im PS vor
- KVNR und IK-Nummer sind im PS gespeichert (z.B. im Patientenstammblatt)

### Variante Abruf VSD mit Aktualisierung

ggf. in Standardablauf integrieren



Der PoPP-Token ist gültig. Da der Versorgungskontext bereits vorliegt (quartalsmäßiger Abruf der VSD ist bereits erfolgt) kann der im PS gespeicherte und gültige PoPP-Token verwendet werden.
Standardablauf -> gibt es auch hier einen weiteren Prüfungsnachweis?
- Das PS prüft den Token auf zeitliche Gültigkeit (Prüfung, ob der Token im aktuellen Quartal erzeugt wurde)
- Das PS ruft die Operation ReadVSD am Fachdienst VSDM mit den Parametern *irgendwas=true* und *irgendwas=true* auf.
- Der Fachdienst VSDM prüft anhand eines Hashwertes, ob aktuellere Daten vorleigen


# VSD von eGK lesen
Dieser Anwendungsfall kommt dann zum tragen, wenn die VSD nicht online vom Fachdienst der Kasse abgerufen werden können. Die erhaltenen Daten von der eGK dienen dann zur Nutzung von bereits etablierten Ersatzverfahren ausserhalb des VSDM 2.0.



### Allgemein
|Dokumentation<img width="430" height="1">| Zielgruppe<img width="70" height="1"> |
|-----|------------|
|[Fehlerbehandlung](docs/vsdm_statuscodes.md)|![][PVS] ![][AVS]|

### Anwendungsfälle Abruf VSD
|Dokumentation<img width="430" height="1">| Zielgruppe<img width="70" height="1"> |
|-----|------------|
|[VSD über PS abrufen](docs/vsdm_anwendungsfaelle.md)|![][PVS] ![][AVS]|





**Herstellung des Versorgungskontextes**

Versorgungskontext bedeutet, dass ein Zusammenhang zwischen einem berechtigten Versicherten und einer behandelnden oder versorgenden Leistungserbringerinstitution (LEI) hergestellt wird.
Der Versorgungskontext wird für die LEI auf Basis der SMC-B und für den Versicherten auf Basis der eGk oder der GesundheitsID gegenüber dem PoPP-Dienst nachgewiesen. Dieser Nachweis wird wird durch den PoPP-Dienst in Form eines PoPP-Tokens (Testat) attestiert.
Die Authentisierung der LEI gegenüber dem PoPP-Dienst und gegenüber dem Fachdienst ist einmal am Tag erforderlich.
Zukünftig kann der Versicherte auch die GesundheitsID in Verbindung mit einem Frontend des Versicherten (FdV) nutzen, um sich gegenüber dem PoPP-Dienst zu authentisieren.

**Abruf der VSD beim Fachdienst VSDM**

Liegt das Testat des Versorgungskontextes (PoPP-Token) im Primärsystem vor können die VSD online vom Fachdienstabgerufen werden. Hierzu müssen folgende Informationen aus dem PoPP-Token extrahiert und gespeichert werden:
  - das PoPP-Token selbst (so wie es vom PoPP-Dienst geliefert wurde
  - die Krankenversichertennummer (KVNR) des Versicherten
  - die Institutionkennung (IK) der Krankenkasse
  - 
Dies ermöglicht einen erneuten Abruf der VSD bei Folgebesuchen des Versicherten im laufenden Quartal ohne Nutzung der eGk oder GesundheitsID des Versicherten.

Nach dem erfolgten online Abruf der VSD erhält das Primärsystem
 - die VSD des Versicherten (bei erstmaligem Abruf im laufenden Quartal oder wenn sich VSD geändert haben)
 - den VSD-Änderungsindikator (ETAG)
 - den Prüfungsnachweis

Das PS speichert diese Informationen.
