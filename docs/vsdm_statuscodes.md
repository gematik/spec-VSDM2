# VSDM 2.0 API-Dokumentation Fehlerbehandlung am VSDM 2.0 Fachdienst


Zielgruppe: image:{PVS}[] image:{AVS}[] image:{FdV}[]

Folgende http Status Codes können Clients bei der Benutzung der Schnittstellen des VSDM-Fachdienstes erwarten.
Fehler können sowohl im inneren http-Requests (bei fachlichen Fehlern) als auch im äußeren http-Request auftreten.

Einfügen Inhaltsverzeichnis

## Auswertung eines Operation Outcomes

Bei Fehlern zur Validierung von FHIR-Ressourcen gibt der E-Rezept-Fachdienst einen OperationOutcome zurück. Dieser enthält in den Feldern `.severity` und `.code` kodierte Informationen zur Schwere des Fehlers. `.details` gibt eine kurze Beschreibung des Fehlers wieder und `.diagnostics` dient der detaillierten Fehleranalyse.

Fehlermeldungen, die in der API oder Spezifikation vorgegeben sind, werden in `.details` angegeben.

Nach FHIR Spezifikation sind die Felder `.severity` und `.code` verpflichtend (1..1). `.details` und `.diagnostics` sind hingegen optional (0..1).

Im Folgenden ein Beispiel ein OperationOutcome eines Validierungsfehlers, der vom VSDM 2.0-Fachdienst an den Client zurückgegeben wird:

Tabelle operationoutcome

## Status Codes 
-------------------------
| http Operation | Mögliche http Statuscodes | Bedeutung/Fehlerdetails |
| -------- | -------- | -------- |
|    |    |    |
|    |    |    |
|    |    |    |
|    |    |    |


## Server Fehlercodes
-------------------
| Mögliche http Status Codes | Bedeutung/Fehlerdetails | Verhalten im Fehlerfall |
| -------- | -------- | -------- |
|    |    |    |
|    |    |    |
|    |    |    |
|    |    |    |




