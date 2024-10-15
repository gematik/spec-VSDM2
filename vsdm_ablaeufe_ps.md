# Abläufe im PS

**Aufnahme des Versicherten**

Im Primärsystem dient bei der Anmeldung die eGK und zukünftig die GesundheitsID des Versicherten zur Aufnahme bzw. Identifikation des Versicherten. 
Dies beinhaltet
  - die Herstellung des Versorgungskontexres
  - den Abruf der VSD beim Fachdienst VSDM 2.0
  - den Abruf des Prüfungsnachweises
  - bei unbekannten Versicherten das Anlegen der Patientenakte
  - bei bekannten Versicherten ggf. das Aktualisieren der Pateintenakte
    
Beim ersten Kontakt des Versicherten im laufenden Quartal muss das PS den Abruf der VSD beim Fachdienst VSDM durchführen. Bei Folgebesuchen des Versicherten im laufenden Quartal soll immer ein erneuter Abruf der VSD erfolgen um Änderungen in den VSD in das PS übernehmen zu können. Dies kann insbesondere wichtig sein in Bezug auf Anpassungen zum Versicherungsschutz oder zur Kostenabdeckung. 

**Patientenakte anlegen**
Ist ein Versicherten beim Besuch der LEI bis dahin unbekannt, muss eine neue Patientenakte angelegt werden. Dies kann unmittelbar an den Abruf der VSD gekoppelt sein, d.H. nach dem Erhalt der VSD erstellt das PS automatisch eine Patientenakte und überführt alle Informationen aus dem Abruf der VSD. 
Der Nutzer soll einen Hinweis erhalten, dass der Versicherte noch nicht im Patientenstamm des PS existiert und eine neue Patientenakte angelegt wird.

**Patientenakte anzeigen**
Existiert bereits eine Patientenakte soll das PS den Abruf der VSD automatisch starten wenn die Patientenakte im Rahmen eines Folgebesuchs geöffnet wird. Liegt im laufenden Quartal noch kein gültiger Prüfungsnachweis vor muss der Abruf der VSD erfolgen.

Die Anzeige der zum Versicherten gehörigen Patientenakte kann auf unterschiedliche Arten erfolgen:

- Automatische Identifikation der Patientenakte im PS anhand der KVNR durch Stecken der eGK oder Verwendung der GesundheitsID des Versicherten
- Manuelle Identifikation der Patientenakte des Verischerten, , z.B. anhand des Namens und Geburtsdatums 

Bei der automatischen Identifikation soll die Zuordnung von Versichertem und Patientenakte im PS über die KVNR erfolgen, da diese einen eindeutigen Bezug zum Versicherten herstellt.

Auf welche Weise der Aufnahmeprozess durchgeführt wird, wird in der Konfiguration des PS festgelegt oder ist ein Leistungsmerkmal des PS. Empfohlen wird die automatische Unterstützung einer Neuanlage oder Aktualisierung der Patientenakte.

Konfigurationsparameter zum onlie Abruf VSD im PS
| <!-- -->      | <!-- -->        | <!-- -->      |
|:-------------:|:---------------:|:-------------:|
| MODE_ONLINE_CHECK | ALWAYS (Immer) | Ein online Abruf VSD wird ungeachtet eines vorangegangenen Abrufs immer angefordert |
|  | FIRST (Quartal | Ein nnline Abruf VSD wird nur beim ersten Kontakt im Quartal angefordert. Die Prüfung wird wiederholt, wenn der vorangegangene Abruf wegen technischer Probleme abgebrochen wurde |
|  | USER (benutzerinteraktion | Der Nutzer entscheidet individuell über die Durchführung eines Abrufs VSD. Falls das PS die Notwendigkeit einer Online-Prüfung festgestellt hat, sollte dies in Form einer Bestätigung erfolgen. |






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




