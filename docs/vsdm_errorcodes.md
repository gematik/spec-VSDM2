# Fehlerbehandlung

Nutzer sollen an der Anwendungsoberfläche des Primärsystems eine Handlungsanweisung erhalten die ihm erlauben, auf Warnungen und Fehlermeldungen in geeigneter Weise reagieren zu können.

**Fehlermeldungen am PS**

| Code | Anzeige | Handlungsempfehlung |
|:------------- | :------------ | :-------------- |
| VSDSERVICE_INVALID_IK | Ungültige oder nicht bekannte  Institutionskennung <ik>. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) oder die KTR gar nicht bei diesem FD-Anbieter ist (fehlerhafter DNS-Eintrag). |
| VSDSERVICE_INVALID_KVNR | Ungültige oder nicht bekannte Krankenversichertennummer <kvnr>. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) |
| VSDSERVICE_PATIENT_RECORD_NOT_FOUND |Die Versichertenstammdaten zur Versichertennummer <kvnr> konnten für die Institutionskennung <ik> nicht ermittelt werden. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem, PoPP-Service oder Schnittstelle zu KTR-Bestandssystemen). |
| VSDSERVICE_MISSING_OR_INVALID_HEADER | Der erforderliche HTTP-Header <header> fehlt oder ist undgültig. | Im Falle des Headers PoPP: Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem). |
| VSDSERVICE_UNSUPPORTED_MEDIATYPE | Der vom Clientsystem angefragte Medientyp <media type> wird nicht unterstützt. | ./. (Implementierungsfehler) |
| VSDSERVICE_UNSUPPORTED_ENCODING | Das vom Clientsystem angefragte Komprimierungsverfahren <encoding scheme> wird nicht unterstützt. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_PATIENT_RECORD_VERSION | Der Änderungsindikator <etag_value> kann nicht verarbeitet werden. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_HTTP_OPERATION | Die HTTP-Operation <http-operation> wird nicht unterstützt. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_ENDPOINT | Der angefragte Endpunkt <endpoint> wird nicht unterstützt.  | ./. (Implementierungsfehler) |

**Fehlermeldungen des Fachdienstes VSDM**

| Code | Anzeige | Handlungsempfehlung |
| :------------- | :------------ | :-------------- |
| VSD_SERVICE_INTERNAL_SERVER_ERROR | Unerwarteter interner Fehler des Fachdienstes VSDM.  | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
| VSDSERVICE_VSDD_NOTREACHABLE | Fachdienst VSDM ist für den Kostenträger  <ik> nicht erreichbar. | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
| VSDSERVICE_VSDD_TIMEOUT | Fachdienst VSDM für den Kostenträger  <ik> hat das Zeitlimit für eine Antwort überschritten.  | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
 
