Instance: VSDMOperationOutcome-InvalidHTTPOperation
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_HTTP_OPERATION"
Description: "Beispiel zur Fehlermeldung 'Die HTTP-Operation [http-operation] wird nicht unterstützt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Die HTTP-Operation PATCH wird nicht unterstützt.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #not-supported "Content not supported"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_HTTP_OPERATION "Die HTTP-Operation [http-operation] wird nicht unterstützt."
    * text = "Die HTTP-Operation PATCH wird nicht unterstützt."
  * diagnostics = """
      Implementierungsfehler beim Clientsystem - der Hersteller des Clientsystems ist zu kontaktieren.
    """
