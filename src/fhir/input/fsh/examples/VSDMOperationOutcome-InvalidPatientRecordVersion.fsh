Instance: VSDMOperationOutcome-InvalidPatientRecordVersion
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_PATIENT_RECORD_VERSION"
Description: "Beispiel zur Fehlermeldung 'Der Änderungsindikator [etag_value] kann nicht verarbeitet werden.'"
Usage: #example

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
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_PATIENT_RECORD_VERSION "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * text = "Der Änderungsindikator '' kann nicht verarbeitet werden."
  * diagnostics = """
      Der HTTP Header If-none-match fehlt.
      Mit diesem Header muss das Clientsystem den letzten bekannten Aktualitätswert mitteilen.
      Falls kein Wert vorliegt, muss der Header mit 0 gefüllt werden.
      Wiederholen Sie die Anfrage unter Angabe eines gültigen Werts.
    """
  * location[+] = "http.If-None-Match"
