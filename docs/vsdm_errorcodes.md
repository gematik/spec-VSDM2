# Fehlerbehandlung

Nutzer sollen an der Anwendungsoberfläche des Primärsytsems eine Handlungsanweisung erhalten die ihm erlauben, auf Warnungen und Fehlermeldungen in geeigneter Weise reagieren zu können.

| Errorcode | Typ | Fehlermeldung | Beschreibung | Handlungsempfehlung |
| :-------- | :---- |:------------- | :------------ | :-------------- |
| 79000 | Error | The proof of patient presence token is expired. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service erneuern. | Versorgungskontext erneut herstellen. |
| 79010 |  Error | Invalid health insurer mark (ik). | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) oder die KTR gar nicht bei diesem FD-Anbieter ist (fehlerhafter DNS-Eintrag). |
| 79011 |  Error | Invalid health insured person number (kvnr) | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service). |
| 79020 |  Error | The patient record for (kvnr) could not found at health insurer with id (ik) or patient does not exist. | Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem, PoPP-Service oder Schnittstelle zu Bestandssystemen der Kassen). |
| 79030 |  Error | The required header (header) is  missing or invalid. | Im Falle des Headers PoPP: Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1 x erneuern. Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem). |
| 79031 |  Warning | The clientsystem asked for an unsupported media type (media type). | (Implementierungsfehler) |
