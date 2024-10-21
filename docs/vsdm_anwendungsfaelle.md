# VSD vom Fachdienst abrufen
Der Anwendungsfall ermöglicht dem Leistungserbringer,
- das gültige Versicherungsverhältnis beim erstmaligen Quartalsbesuch zu prüfen,
- die jeweils zum Besuch aktuellen VSD und
- den Prüfungsnachweis für die Abrechnung zu erhalten

Um diesen Anwendungsfall ausführen zu können, muss sich das Primärsystem der Leistungserbringerinstitution (LEI) am PoPP-Service unter Verwendung des Zero Trust Access registrieren. Nach der erfolgreichen Registrierung und Anmeldung kann der PoPP-Token erzeugt und abgerufen werden. Sind diese Vorraussetzungen erfüllt, kann der Versorgungskontext mittels Popp-Token attestiert werden. Für die Herstellung des Versorungskontextes kann der Versicherte sowohl die eGK als auch die GesundheitsID nutzen. Die Herstellung des Versorgungskontektes ist nur beim ersten Besuch des Versicherten im laufenden Quartal notwendig. 

## Standardablauf Abruf VSD

**Eingangsbedingung:**
- Abruf der VSD erfolgt erstmalig im laufenden Quartal

**Vorraussetzungen:**
- PoPP-Token liegt im PS vor
- KVNR und IK-Nummer sind im PS gespeichert (z.B. im Patientenstammblatt)

| Aktivität | Komponente | Beschreibung |
| :-------- | :----------- | :---------- |
| Lokalisierung FD VSDM 2.0 | PS | Zur Lokalisierung des Fachdienstes VSDM 2.0 (der die VSD des Versicherten verwaltet) wird eine Service Discovery auf Basis der IK der Krankenkasse durchgeführt |
| Übertragung des Versorgungskontextnachweises | PS | Zur Anfrage an den zuständigen Fachdienst wird der gültige Versorgungskontextnachweis in Form eines PoPP-Tokens üertragen |
| Access-Token prüfen | FD | Der HTTP-Proxy des FD prüft auf gültigen PoPP-Token und leitet die Anfrage an den FD weiter.   |
| VSD übermitteln | FD | Der FD übermittelt die VSD als FHIR-Bundle an das PS |
| PN übermitteln | FD | Der FD übermittelt den PN als XML-Datei an das PS |
| VSD speichern | PS | Die übermittelten VSD werden gespeichert |
| PN speichern | PS | Der übermittelte PN wird für das laufende Quartal gespeichert|







### Variante UC VSD lesen bei vorliegendem PoPP-Token
Voraussetzung: Der PoPP-Token ist gültig. Da der Versorgungskontext bereits vorliegt (quartalsmäßiger Abruf der VSD ist bereits erfolgt) kann der im PS gespeicherte und gültige PoPP-Token verwendet werden.
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
