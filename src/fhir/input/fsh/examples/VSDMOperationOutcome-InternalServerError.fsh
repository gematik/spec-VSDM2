Instance: VSDMOperationOutcome-InternalServerError
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INTERNAL_SERVER_ERROR"
Description: "Beispiel zur Fehlermeldung 'Unerwarteter interner Fehler des Fachdienstes VSDM.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Unerwarteter interner Fehler des Fachdienstes VSDM.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #transient "Transient Issue"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INTERNAL_SERVER_ERROR "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * text = "Unerwarteter interner Fehler des Fachdienstes VSDM."
  * diagnostics = """
      Wiederholungsversuch im 'Exponential Backoff'-Verfahren gemäß A_25339.
    """
