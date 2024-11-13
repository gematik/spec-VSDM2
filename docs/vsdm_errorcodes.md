# Fehlerbehandlung

Nutzer sollen an der Anwendungsoberfläche des Primärsytsems eine Handlungsanweisung erhalten die ihm erlauben, auf Warnungen und Fehlermeldungen in geeigneter Weise reagieren zu können.

| Typ | Code | Anzeige | Handlungsempfehlung |
| :---- |:------------- | :------------ | :-------------- |
| Error | VSDSERVICE_POPPTOKEN_EXPIRED | The proof of patient presence token is expired. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service erneuern. |
| Error | Invalid health insurer mark (ik). | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) oder die KTR gar nicht bei diesem FD-Anbieter ist (fehlerhafter DNS-Eintrag). | Versorgungskontext erneut herstellen |
| Error | Invalid health insured person number (kvnr) | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service). | Versorgungskontext erneut herstellen |
| Error | The patient record for (kvnr) could not found at health insurer with id (ik) or patient does not exist. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem, PoPP-Service oder Schnittstelle zu Bestandssystemen der Kassen). | Versorgungskontext erneut herstellen |
| Error | The required header (header) is  missing or invalid. | Im Falle des Headers PoPP: Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem). | Versorgungskontext erneut herstellen |
