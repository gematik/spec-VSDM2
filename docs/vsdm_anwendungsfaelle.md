# VSD vom Fachdienst abrufen
Der Anwendungsfall ermöglicht dem Leistungserbringer,
- das gültige Versicherungsverhältnis beim erstmaligen Quartalsbesuch zu prüfen,
- die jeweils zum Besuch aktuellen VSD und
- den Prüfungsnachweis für die Abrechnung zu erhalten

Einfügen Sequenzdiagramm Online-Abruf VSD aus Spec

Beim erstmaligen Besuch des Versicherten im Quartal stellt das Clientsystem den Nachweis des Versorgungskontextes durch Abruf des PoPP-Tokens her. Der Token und die daraus extrahierte KVNR und IK.Nummer wird gespeichert, z.B. im Patientenstamm.

Das PS ruft die Operation ReadVSD am Fachdienst VSDM mit den Parametern *irgendwas=true* und *irgendwas=true* auf.

Der Fachdienst VSDM übermittelt die VSD an das PS

Der Fachdienst erstellt den Prüfungsnachweis und übermittelt ihn an das PS

Das PS speichert die VSD und den Prüfungsnachweis

| URI         | https: |
| ----------- | ------ |
| Method      |  |
| Requester   | AVS |
| Responder   | Fachdienst VSDM 2.0 |
| HTTP Header |  |
| Payload     |  |

Response

Hier kommt die Response rein


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
