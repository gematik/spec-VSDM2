Instance: VSDMOperationOutcome-MissingPatientRecordVersion
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_MISSING_PATIENT_RECORD_VERSION"
Description: "Beispiel zur Fehlermeldung 'Der erforderliche Änderungsindikator im Header If-None-Match fehlt.'"
Usage: #example

* meta
  * profile[0] = Canonical(VSDMOperationOutcome|1.0.2-dev)
* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #value "Element value invalid"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_MISSING_PATIENT_RECORD_VERSION "Der erforderliche Änderungsindikator im Header If-None-Match fehlt."
    * text = "Der erforderliche Änderungsindikator im Header If-None-Match fehlt."
  * diagnostics = """
      Der HTTP Header If-None-Match fehlt.
      Mit diesem Header muss das Clientsystem den letzten bekannten Aktualitätswert mitteilen.
      Falls kein Wert vorliegt, muss der Header mit 0 gefüllt werden.
      Wiederholen Sie die Anfrage unter Angabe eines gültigen Werts.
    """
  * expression[+] = "http.If-None-Match"
