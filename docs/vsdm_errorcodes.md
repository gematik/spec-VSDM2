# Fehlerbehandlung

Nutzer sollen an der Anwendungsoberfläche des Primärsystems eine Handlungsanweisung erhalten die ihm erlauben, auf Warnungen und Fehlermeldungen in geeigneter Weise reagieren zu können.

**Fehlermeldungen am PS**

| Code | Anzeige | Handlungsempfehlung |
|:------------- | :------------ | :-------------- |
| VSDSERVICE_POPPTOKEN_EXPIRED | The proof of patient presence token is expired. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service erneuern. |
| VSDSERVICE_INVALID_IK | Invalid health insurer mark <ik>. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) oder die KTR gar nicht bei diesem FD-Anbieter ist (fehlerhafter DNS-Eintrag). |
| VSDSERVICE_INVALID_KVNR | Invalid health insured person number <kvnr>. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) |
| VSDSERVICE_PATIENT_RECORD_NOT_FOUND |The patient record for <kvnr> could not found at health insurer with id <ik>. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem, PoPP-Service oder Schnittstelle zu KTR-Bestandssystemen). |
| VSDSERVICE_MISSING_OR_INVALID_HEADER | The required header <header> is  missing or invalid. | Im Falle des Headers PoPP: Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem). |
| VSDSERVICE_UNSUPPORTED_MEDIATYPE | The clientsystem asked for an unsupported media type <media type>. | ./. (Implementierungsfehler) |
| VSDSERVICE_UNSUPPORTED_ENCODING | The clientsystem asked for an unsupported encoding scheme <encoding scheme>. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_PATIENT_RECORD_VERSION | The etag_value does not exists or could not processed. | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_HTTP_OPERATION | ERROR | ./. (Implementierungsfehler) |
| VSDSERVICE_INVALID_ENDPOINT | ERROR | ./. (Implementierungsfehler) |

**Fehlermeldungen des Fachdienstes VSDM**

| Code | Anzeige | Handlungsempfehlung |
| :------------- | :------------ | :-------------- |
| VSD_SERVICE_INTERNAL_SERVER_ERROR | Unexpected internal server error. | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
| VSDSERVICE_VSDDB_NOTREACHABLE | Health insurer system with id <ik> is offline. | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
| VSDSERVICE_VSDDB_TIMEOUT | Health insurer system with id <ik> timed out. | Wiederholungsversuch in 15 Minuten Abständen. Abbruch nach 8 Versuchen. |
 
