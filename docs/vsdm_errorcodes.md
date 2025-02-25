# Fehlerbehandlung

Im Arbeitsablauf des Nutzers können Fehler beim Abruf der VSD vom Fachdienst VSDM 2.0 auftreten. Da vom Nutzer kein technisches Vorwissen erwartet werden darf, sind Fehlermeldungen so anzugeben, dass dieser nach Möglichkeit darauf reagieren kann. Hierbei sollen Fehlermeldungen so aufbereitet werden, sodass der Nutzer versteht, welches System im Prozess den Fehler verursacht hat. Außerdem sollen bei technischen Fehlern diese sprachlich aufbereitet werden, so dass der Nutzer den Inhalt des Fehlers verstehen kann.

Nutzer sollen an der Anwendungsoberfläche des Primärsystems eine Handlungsanweisung erhalten die ihm erlauben, auf Warnungen und Fehlermeldungen in geeigneter Weise reagieren zu können.

Die nachfolgenden Tabellen der Fehlercodes sollen als Auszug einen Überblick über mögliche Fehlersituationen vermitteln. Die Fehlertexte in den Tabellen enthalten Kurzbeschreibungen der Fehler und sind keine Vorgaben für Fehlermeldungen des Primärsystems. Hier soll der Hersteller darauf achten, für die Zielgruppe verständliche Formulierungen zu verwenden.

**Fehlermeldungen am PS**

| Code | Anzeige | Handlungsempfehlung |
|:------------- | :------------ | :-------------- |
| VSDSERVICE_INVALID_IK | Ungültige oder nicht bekannte  Institutionskennung (ik). | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) oder die KTR gar nicht bei diesem FD-Anbieter ist (fehlerhafter DNS-Eintrag). |
| VSDSERVICE_INVALID_KVNR | Ungültige oder nicht bekannte Krankenversichertennummer (kvnr). | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) |
| VSDSERVICE_PATIENT_RECORD_NOT_FOUND |Die Versichertenstammdaten zur Versichertennummer (kvnr) konnten für die Institutionskennung <ik> nicht ermittelt werden. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem, PoPP-Service oder Schnittstelle zu KTR-Bestandssystemen). |
| VSDSERVICE_MISSING_OR_INVALID_HEADER | Der erforderliche HTTP-Header (header) fehlt oder ist undgültig. | Im Falle des Headers PoPP: Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem). |
| VSDSERVICE_UNSUPPORTED_MEDIATYPE | Der vom Clientsystem angefragte Medientyp (media type) wird nicht unterstützt. | ./. (Implementierungsfehler) |
| VSDSERVICE_UNSUPPORTED_ENCODING | Das vom Clientsystem angefragte Komprimierungsverfahren (encoding scheme) wird nicht unterstützt. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_PATIENT_RECORD_VERSION | Der Änderungsindikator <etag_value> kann nicht verarbeitet werden. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_HTTP_OPERATION | Die HTTP-Operation (http-operation) wird nicht unterstützt. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_ENDPOINT | Der angefragte Endpunkt (endpoint) wird nicht unterstützt.  | ./. (Implementierungsfehler) |

**Fehlermeldungen des Fachdienstes VSDM**

| Code | Anzeige | Handlungsempfehlung |
| :------------- | :------------ | :-------------- |
| VSD_SERVICE_INTERNAL_SERVER_ERROR | Unerwarteter interner Fehler des Fachdienstes VSDM.  | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
| VSDSERVICE_VSDD_NOTREACHABLE | Fachdienst VSDM ist für den Kostenträger (ik) nicht erreichbar. | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
| VSDSERVICE_VSDD_TIMEOUT | Fachdienst VSDM für den Kostenträger (ik) hat das Zeitlimit für eine Antwort überschritten.  | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |

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
| 6 | VSD lokalisieren | FD | Der FD führt bei Unterschieden in der VSD Version zwischen PS und FD eine Lokalisierung der VSD anhand der KVNR durch und ruft diese ab |
| 7 | PZ und VSD übermitteln | FD | Der FD übermittelt die Prüfziffer, den etag_value und die VSD an den HTTP-Proxy des ZT-Clusters |
| 8 | PZ und VSD an PS übermitteln | ZT-Cluster | Der HTTP-Proxy des ZT-Clusters übermittelt die Prüfziffer, den etag_value und die VSD an das PS |
| 9 | PZ und VSD speichern | PS | Die übermittelte PZ, der etag_value und die VSD werden gespeichert |

**Nachbedingung**
- PS: Die VSD wurden wurden nicht im Patientenstammblatt gespeichert
- PS: Die Prüfziffer ist nicht im PS gespeichert
- PS: der etag_value wurde nicht aktualisiert
 
