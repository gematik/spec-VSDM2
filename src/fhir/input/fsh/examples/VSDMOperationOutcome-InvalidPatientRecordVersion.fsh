Instance: VSDMOperationOutcome-InvalidPatientRecordVersion
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_PATIENT_RECORD_VERSION"
Description: "Beispiel zur Fehlermeldung 'Der Änderungsindikator [etag_value] kann nicht verarbeitet werden.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der Änderungsindikator 0xdeadbeef kann nicht verarbeitet werden.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #value "Element value invalid"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_PATIENT_RECORD_VERSION "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * text = "Der Änderungsindikator 0xdeadbeef kann nicht verarbeitet werden."
  * diagnostics = """
      Implementierungsfehler beim Clientsystem - der Hersteller des Clientsystems ist zu kontaktieren.
    """
  * location[+] = "http.If-None-Match"
