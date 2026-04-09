# Fehlerbehandlung

Im Arbeitsablauf des Nutzers können Fehler beim Abruf der VSD vom Fachdienst VSDM 2.0 auftreten. Da vom Nutzer kein technisches Vorwissen erwartet werden darf sind Fehlermeldungen so anzugeben, dass dieser nach Möglichkeit darauf reagieren kann. Hierbei sollen Fehlermeldungen so aufbereitet werden, dass der Nutzer versteht welches System im Prozess den Fehler verursacht hat. Außerdem sollen bei technischen Fehlern diese sprachlich aufbereitet werden, so dass der Nutzer den Inhalt des Fehlers verstehen kann.

Nutzer sollen an der Anwendungsoberfläche des Primärsystems eine Handlungsanweisung erhalten die ihm erlauben, auf Warnungen und Fehlermeldungen in geeigneter Weise reagieren zu können.

Die nachfolgende Tabelle enthält die im Fehlerfall vom Fachdienst VSDM 2.0 zurückgelieferten Fehlercodes an das Primärsystem und den daraus resultierenden Handlungsempfehlungen sowohl für die LEI als auch für den Servicedienstleister der LEI.

**Fehlermeldungen am PS**

| Code | Handlungsempfehlung LEI | Handlungsempfehlung Dienstleister |
|:------------- | :------------ | :-------------- |
| VSDSERVICE_INVALID_IK (Institutionskennung [ik] aus dem PoPP-Token weist Formatfehler auf.) | Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Die im PoPP-Token enthaltene IK der Versicherung ist ungültig (Formatfehler). Fordern Sie ein neues PoPP-Token an und wiederholen Sie die Abfrage beim zuständigen VSDM 2.0-Fachdienst. Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern brechen Sie mit einer Fehlermeldung ab. In diesem Fall liegt wahrscheinlich eine Störung des zentralen PoPP-Service vor. |
| VSDSERVICE_INVALID_KVNR (Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf.) | Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Die im PoPP-Token enthaltene Krankenversicherungsnummer ist ungültig (Formatfehler). Fordern Sie ein neues PoPP-Token an und wiederholen Sie die Abfrage beim zuständigen VSDM 2.0-Fachdienst. Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern brechen Sie mit einer Fehlermeldung ab. In diesem Fall liegt wahrscheinlich eine Störung des zentralen PoPP-Service vor. |
| VSDSERVICE_UNKNOWN_IK (Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt.) | Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Die im PoPP-Token angegebene IK der Versicherung ist dem angesprochenen VSDM 2.0-Fachdienst nicht bekannt. Fordern Sie ein neues PoPP-Token an. Wiederholen Sie die Dienstlokalisierung, um den korrekten zuständigen Fachdienst zu ermitteln und wiederholen Sie die Abfrage. Bei erneutem Fehler wiederholen Sie die Abfrage mit größerem zeitlichen Abstand, um eventuell geänderte DNS-Einstellungen wirksam werden zu lassen. Halten Sie die Anwender über den Status informiert. Bei Andauern des Fehlers über 24 h liegt möglicherweise ein Fehler in der Implementierung des Clientsystems oder des Fachdients vor. |
| VSDSERVICE_UNKNOWN_KVNR (Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt.) | Der Patient mit der angegebenen Krankenversicherungsnummer ist bei der angesprochenen Versicherung nicht bekannt. Wiederholen Sie die Stammdatenabfrage; falls der Fehler bestehen bleibt, prüfen Sie mit dem Versicherten die Gültigkeit seines Versicherungsanspruchs.. | Der Patient mit der angegebenen Krankenversicherungsnummer ist bei der angesprochenen Versicherung nicht bekannt. Fordern Sie ein neues PoPP-Token an. Wiederholen Sie die Dienstlokalisierung, um den korrekten zuständigen Fachdienst zu ermitteln und wiederholen Sie die Abfrage. Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern weisen Sie die Anwender auf ein möglicherweise ausgelaufenes Versicherungsverhältnis hin. |
| VSDSERVICE_INVALID_PATIENT_RECORD_VERSION (Der Änderungsindikator [etag_value] kann nicht verarbeitet werden.) | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Der HTTP Header If-none-match fehlt. Mit diesem Header muss das Clientsystem den letzten bekannten Aktualitätswert mitteilen. Falls kein Wert vorliegt, muss der Header mit 0 gefüllt werden. Wiederholen Sie die Anfrage unter Angabe eines gültigen Werts. |
| VSDSERVICE_INVALID_PROFILE_VERSION (Die vom Clientsystem angefragte Profilversion [profile_version] wird nicht unterstützt.) | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Das Clientsystem hat mit dem optionalen Parameter profileVersion eine Profilversion angefordert, die vom Fachdienst nicht unterstützt wird. Das Clientsystem muss den Parameter entweder mit einer unterstützten Version gemäß der aktuellen gematik-Vorgaben füllen oder eine Anfrage ohne den Parameter stellen. Wenn das Clientsystem den Parameter nicht übergibt, liefert der Fachdienst die jeweils aktuelle Standardversion. Wiederholen Sie die Anfrage unter Angabe eines gültigen Werts oder ohne den optionalen Parameter. |
| SERVICE_INVALID_HEADER (Der HTTP-Header [header] ist ungültig.) | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Der angegebene HTTP Header enthält nicht spezifikationskonforme Angaben. Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem. Prüfen Sie den Aufbau des Headers gegen die einschlägigen Standards (v.A. RFC 9110) und korrigieren Sie die Anfrage entsprechend. |
| SERVICE_UNSUPPORTED_MEDIATYPE (Das vom Clientsystem angefragte Datenformat [media_type] wird nicht unterstützt.) | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Das im HTTP Header Accept angeforderte Datenformat wird vom VSDM 2.0-Fachdienst nicht unterstützt. Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem. Es sind nur die Formate application/fhir+xml und application/fhir+json erlaubt. Stellen Sie sicher, dass nur die genannten Formate verwendet werden. |
| Service_INVALID_HTTP_OPERATION (Die HTTP-Operation [http_operation] wird nicht unterstützt.) | Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller. | Die in der HTTP-Anfrage verwendete Methode (Verb) wird vom VSDM 2.0-Fachdienst nicht unterstützt. Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem. Es darf nur die Methode GET verwendet werden. |
| SERVICE_INTERNAL_SERVER_ERROR (Unerwarteter interner Fehler des Fachdienstes VSDM.) | Der Versichertenstammdatendienst ist aktuell nicht in der Lage, die Anfrage zu beantworten. Bitte verwenden Sie das TI-Lagebild, um sich über mögliche Störungen zu informieren. Wiederholen Sie die Anfrage, sobald die Störungen beseitigt sind.  | Es handelt sich um einen internen Fehler des Fachdiensts VSDM 2.0. Wiederholen Sie die Anfrage. Beachten Sie dazu das in A_25339 in gemSpec_ZETA beschriebene Exponential-Backoff-Verfahren, um eine Überlastung des Diensts oder eine temporäre Sperre aufgrund zuvieler Zugriffe zu vermeiden. |

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
| 7 | Fehler anzeigen | PS | Das PS zeigt die Fehlerbeschreibung an: Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt. |
| 8 | Handlungsempfehlung anzeigen | PS | Das PS zeigt die Handlungsempfehlung für den Fehlercode an |

**Nachbedingung**
- PS: Die VSD wurden wurden nicht im Patientenstammblatt gespeichert
- PS: Die Prüfziffer ist nicht im PS gespeichert
- PS: der etag_value wurde nicht aktualisiert
 
