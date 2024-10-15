# Abläufe im PS
Im Primärsystem dient bei der Anmeldung die eGK und zukünftig die GesundheitsID des Versicherten zur Aufnahme bzw. Identifikation des Versicherten. 
Dies beinhaltet
  - die Herstellung des Versorgungskontexres
  - den Abruf der VSD beim Fachdienst VSDM 2.0

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




