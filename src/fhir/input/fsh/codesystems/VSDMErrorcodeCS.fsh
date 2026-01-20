CodeSystem: VSDMErrorcodeCS
Title: "VSDM-Fehlercodes"
Description: "Fachspezifische Fehlercodes im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta-CodeSystem
* ^caseSensitive = true
* ^content = #complete
* ^purpose = """
    Dieses CodeSystem enthält die an das Clientsystem zu sendenden fachspezifischen Fehlercodes im Versichertenstammdatenmanagement (VSDM) 2.0.
    Für diese Fehlercodes wird eine Fehlerbeschreibung in Form einer VSDMOperationOutcome-Struktur erzeugt, die dann einen Fehlercode aus diesem CodeSystem enthält.
    Die Definition der einzelnen Codes enthält den Meldungstext, der als narrative content für den Anwender des Clientsystems bestimmt ist.
    Die Eigenschaft diagnostics enthält die technischen Zusatzinformationen, die im Element VSDMOperationOutcome.issue.diagnostics der Antwortstruktur angegeben werden sollen.
  """

// Property zur Aufnahme der technischen Zusatzinformationen
* ^property[+].code = #diagnostics
* ^property[=].uri = "https://gematik.de/fhir/vsdm2/CodeSystem/VSDMErrorcodeCS#diagnostics"
* ^property[=].description = "Technische Informationen zur Fehlerdiagnose"
* ^property[=].type = #string

// #79010 "Institutionskennung [ik] aus dem PoPP-Token weist Formatfehler auf."
* #VSDSERVICE_INVALID_IK "Institutionskennung [ik] aus dem PoPP-Token weist Formatfehler auf."
  * ^definition = """
      Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
       Die im PoPP-Token enthaltene IK der Versicherung ist ungültig (Formatfehler).
       Fordern Sie ein neues PoPP-Token an und wiederholen Sie die Abfrage beim zuständigen VSDM 2.0-Fachdienst.
       Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern brechen Sie mit einer Fehlermeldung ab.
       In diesem Fall liegt wahrscheinlich eine Störung des zentralen PoPP-Service vor.
    """

// #79011 "Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf."
* #VSDSERVICE_INVALID_KVNR "Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf."
  * ^definition = """
      Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Die im PoPP-Token enthaltene Krankenversicherungsnummer ist ungültig (Formatfehler).
      Fordern Sie ein neues PoPP-Token an und wiederholen Sie die Abfrage beim zuständigen VSDM 2.0-Fachdienst.
      Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern brechen Sie mit einer Fehlermeldung ab.
      In diesem Fall liegt wahrscheinlich eine Störung des zentralen PoPP-Service vor.
    """

// #79012 "Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt."
* #VSDSERVICE_UNKNOWN_IK "Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt."
  * ^definition = """
      Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Die im PoPP-Token angegebene IK der Versicherung ist dem angesprochenen VSDM 2.0-Fachdienst nicht bekannt.
      Fordern Sie ein neues PoPP-Token an. Wiederholen Sie die Dienstlokalisierung, um den korrekten zuständigen Fachdienst zu ermitteln und wiederholen Sie die Abfrage.
      Bei erneutem Fehler wiederholen Sie die Abfrage mit größerem zeitlichen Abstand, um eventuell geänderte DNS-Einstellungen wirksam werden zu lassen. Halten Sie die Anwender über den Status informiert.
      Bei Andauern des Fehlers über 24 h liegt möglicherweise ein Fehler in der Implementierung des Clientsystems oder des Fachdients vor.
    """

// #79013 "Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt."
* #VSDSERVICE_UNKNOWN_KVNR "Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt."
  * ^definition = """
      Der Patient mit der angegebenen Krankenversicherungsnummer ist bei der angesprochenen Versicherung nicht bekannt.
      Wiederholen Sie die Stammdatenabfrage; falls der Fehler bestehen bleibt, prüfen Sie mit dem Versicherten die Gültigkeit seines Versicherungsanspruchs.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Der Patient mit der angegebenen Krankenversicherungsnummer ist bei der angesprochenen Versicherung nicht bekannt.
      Fordern Sie ein neues PoPP-Token an. Wiederholen Sie die Dienstlokalisierung, um den korrekten zuständigen Fachdienst zu ermitteln und wiederholen Sie die Abfrage.
      Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern weisen Sie die Anwender auf ein möglicherweise ausgelaufenes Versicherungsverhältnis hin.
    """

// #79014 "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
* #VSDSERVICE_INVALID_PATIENT_RECORD_VERSION "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
  * ^definition = """
      Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Der HTTP Header If-none-match fehlt.
      Mit diesem Header muss das Clientsystem den letzten bekannten Aktualitätswert mitteilen.
      Falls kein Wert vorliegt, muss der Header mit 0 gefüllt werden.
      Wiederholen Sie die Anfrage unter Angabe eines gültigen Werts.
    """

// #79030 "Der HTTP-Header [header] ist ungültig."
* #SERVICE_INVALID_HEADER "Der HTTP-Header [header] ist ungültig."
  * ^definition = """
      Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Der angegebene HTTP Header enthält nicht spezifikationskonforme Angaben.
      Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem.
      Prüfen Sie den Aufbau des Headers gegen die einschlägigen Standards (v.A. RFC 9110) und korrigieren Sie die Anfrage entsprechend.
    """

// #79031 "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
* #SERVICE_UNSUPPORTED_MEDIATYPE "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
  * ^definition = """
      Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Das im HTTP Header Accept angeforderte Datenformat wird vom VSDM 2.0-Fachdienst nicht unterstützt.
      Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem.
      Es sind nur die Formate application/fhir+xml und application/fhir+json erlaubt.
      Stellen Sie sicher, dass nur die genannten Formate verwendet werden.
    """

// #79040 "Die HTTP-Operation [http-operation] wird nicht unterstützt."
* #SERVICE_INVALID_HTTP_OPERATION "Die HTTP-Operation [http-operation] wird nicht unterstützt."
  * ^definition = """
      Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Die in der HTTP-Anfrage verwendete Methode (Verb) wird vom VSDM 2.0-Fachdienst nicht unterstützt.
      Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem.
      Es darf nur die Methode GET verwendet werden.
    """

// #79100 "Unerwarteter interner Fehler des Fachdienstes VSDM."
* #SERVICE_INTERNAL_SERVER_ERROR "Unerwarteter interner Fehler des Fachdienstes VSDM."
  * ^definition = """
      Der Versichertenstammdatendienst ist aktuell nicht in der Lage, die Anfrage zu beantworten.
      Bitte verwenden Sie das TI-Lagebild, um sich über mögliche Störungen zu informieren.
      Wiederholen Sie die Anfrage, sobald die Störungen beseitigt sind.
    """
  * ^property[+].code = #diagnostics
  * ^property[=].valueString = """
      Es handelt sich um einen internen Fehler des Fachdiensts VSDM 2.0.
      Wiederholen Sie die Anfrage.
      Beachten Sie dazu das in A_25339 in gemSpec_ZETA beschriebene Exponential-Backoff-Verfahren, um eine Überlastung des Diensts oder eine temporäre Sperre aufgrund zuvieler Zugriffe zu vermeiden.
    """
