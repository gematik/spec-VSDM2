# Fehlerbehandlung

Im Arbeitsablauf des Nutzers können Fehler beim Abruf der VSD vom Fachdienst VSDM 2.0 auftreten. Da vom Nutzer kein technisches Vorwissen erwartet werden darf sind Fehlermeldungen so anzugeben, dass dieser nach Möglichkeit darauf reagieren kann. Hierbei sollen Fehlermeldungen so aufbereitet werden, dass der Nutzer versteht welches System im Prozess den Fehler verursacht hat. Außerdem sollen bei technischen Fehlern diese sprachlich aufbereitet werden, so dass der Nutzer den Inhalt des Fehlers verstehen kann.

Nutzer sollen an der Anwendungsoberfläche des Primärsystems eine Handlungsanweisung erhalten die ihm erlauben, auf Warnungen und Fehlermeldungen in geeigneter Weise reagieren zu können.

Die nachfolgenden Tabellen der Fehlercodes sollen als Auszug einen Überblick über mögliche Fehlersituationen vermitteln. Die Fehlertexte in den Tabellen enthalten Kurzbeschreibungen der Fehler und sind keine Vorgaben für Fehlermeldungen des Primärsystems. Hier soll der Hersteller darauf achten, für die Zielgruppe verständliche Formulierungen zu verwenden.

**Fehlermeldungen am PS**

| Code | Handlungsempfehlung LEI | Handlungsempfehlung Dienstleister |
|:------------- | :------------ | :-------------- |
| VSDSERVICE_INVALID_IK | Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller | Die im PoPP-Token enthaltene IK der Versicherung ist ungültig (Formatfehler). Fordern Sie ein neues PoPP-Token an und wiederholen Sie die Abfrage beim zuständigen VSDM 2.0-Fachdienst. Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern brechen Sie mit einer Fehlermeldung ab. In diesem Fall liegt wahrscheinlich eine Störung des zentralen PoPP-Service vor. |
| VSDSERVICE_INVALID_KVNR | Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf. | Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. |
| VSDSERVICE_UNKNOWN_IK | Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt. | Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. |
| VSDSERVICE_UNKNOWN_KVNR | Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt. | Der Patient mit der angegebenen Krankenversicherungsnummer ist bei der angesprochenen Versicherung nicht bekannt. Wiederholen Sie die Stammdatenabfrage; falls der Fehler bestehen bleibt, prüfen Sie mit dem Versicherten die Gültigkeit seines Versicherungsanspruchs. |
| VVSDSERVICE_INVALID_PATIENT_RECORD_VERSION | Der Änderungsindikator [etag_value] kann nicht verarbeitet werden. | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. |
| SERVICE_INVALID_HEADER | Der HTTP-Header [header] ist ungültig.. | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. |
| SERVICE_UNSUPPORTED_MEDIATYPE | Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt. | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. |
| Service_INVALID_HTTP_OPERATION | Die HTTP-Operation (http-operation) wird nicht unterstützt. | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. |
| SERVICE_INTERNAL_SERVER_ERROR | Unerwarteter interner Fehler des Fachdienstes VSDM.  | Der Versichertenstammdatendienst ist aktuell nicht in der Lage, die Anfrage zu beantworten. Bitte verwenden Sie das TI-Lagebild, um sich über mögliche Störungen zu informieren. Wiederholen Sie die Anfrage, sobald die Störungen beseitigt sind. |

# Beispiel

Abbruch des Anwendungsfall "Abruf VSD" aufgrund ungültiger KVNR

Variante: Ein unbekannter Versicherter wird in der LEI als Patient aufgenommen

**Eingangsbedingung:**
- Abruf der VSD erfolgt erstmalig für einen unbekannten Versicherten
- Versicherter authentisiert sich mit eGK oder GesundheitsID
- LEI ist am PoPP-Service registriert und angemeldet
- Dienstlokalisierung des FD VSDM 2.0 ist erfolgt

**Vorraussetzungen:**
- Versorgungskontext ist in Form einen vorliegenden PoPP-Tokens attestiert
- PoPP-Token liegt im PS vor
- KVNR und IK-Nummer sind im PS gespeichert (z.B. im Patientenstammblatt)

| Nr | Aktivität | Komponente | Beschreibung |
| -- | :-------- | :----------- | :---------- |
| 1 | VSD am FD anfragen | PS | Zur Anfrage an den zuständigen Fachdienst wird der gültige Versorgungskontextnachweis in Form eines PoPP-Tokens, der Access-Token und der VSD-Änderungsindikator (ETag) übertragen. ETag muss auf "0" gesetzt werden |
| 2 | Access-Token prüfen | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters prüft auf gültigen Access-Token und leitet den Request an den FD weiter. |
| 3 | PoPP-Token prüfen | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters prüft auf gültigen PoPP-Token und leitet den Request an den FD weiter. |
| 4 | KVNR übermitteln | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters übermittelt dem FD VSDM die KVNR in Form des Elements patientId des HTTP-Headers ZETA-PoPP-Token-Content zur Lokalisierung der VSD-Version und der Versichertenstammdaten. |
| 5 | VSD-Version prüfen | FD | Der FD führt beim Aufruf der HTTP-GET-Operation vor der Verarbeitung eines Versichertenstammdatensatzes eine VSD-Aktualitätsprüfung durch |
| 6 | Fehler zurückgeben | FD | Der FD kann zu der KVNR keine VSD lokalisieren und gibt den Fehler VSDSERVICE_INVALID_KVNR zurück |
| 7 | Fehler anzeigen | PS | Das PS zeigt die Fehlerbeschreibung an: Ungültige oder nicht bekannte Krankenversichertennummer (kvnr) |
| 8 | Handlungsempfehlung anzeigen | PS | Das PS zeigt die Handlungsempfehlung für den Fehlercode an |

**Nachbedingung**
- PS: Die VSD wurden wurden nicht im Patientenstammblatt gespeichert
- PS: Die Prüfziffer ist nicht im PS gespeichert
- PS: der etag_value wurde nicht aktualisiert
 
