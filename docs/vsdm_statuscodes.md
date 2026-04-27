# VSDM 2.0 API-Dokumentation Fehlerbehandlung am VSDM 2.0 Fachdienst

Der Fachdienst VSDM 2.0 stellt eine http-Schnittstelle für den Aufruf durch das Clientsystem bereit. Das Ergebnis der Operation wird in der Verwendung von Http-Status-Codes gemäß [RFC2616] mitgeteilt.
Folgende http Status Codes können Clients bei der Benutzung der Schnittstellen des VSDM-Fachdienstes erwarten.
Fehler können sowohl im inneren http-Requests (bei fachlichen Fehlern) als auch im äußeren http-Request auftreten.


## Status Codes 
-------------------------
| http Operation | Mögliche http Statuscodes | Bedeutung/Fehlerdetails |
| -------- | -------- | -------- |
| Resource-Server GET /vsdservice/v1/vsdmbundle | 200 | Anfrage konnte erfolgreich bearbeitet werden. Versichertenstammdaten (VSDMBundle) und Prüfziffer sind in der Antwort enthalten. |
|    | 304 | Anfrage konnte erfolgreich bearbeitet werden. Das Clientsystem besitzt schon die aktuellsten Versichertenstammdaten und es erfolgt keine Aktualisierung. Der Prüfziffer ist in der Antwort enthalten. |
|    | 400 | 79010, 79011, 79012, 79015, 79030, 79206, 79207, 79401, 79402 |
|    | 404 |  79013 |
|    | 405 |  79040 |
|    | 406 |  79031 |
|    | 428 |  79014 |
|    | 500 |  79100 |




