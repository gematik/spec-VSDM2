Instance: VSDMOperationOutcome-VSDDTimeout
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_VSDD_TIMEOUT"
Description: "Beispiel zur Fehlermeldung 'Fachdienst VSDM für den Kostenträger [ik] hat das Zeitlimit für eine Antwort überschritten.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Fachdienst VSDM für den Kostenträger 103456789 hat das Zeitlimit für eine Antwort überschritten.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #timeout "Timeout"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_VSDD_TIMEOUT "Fachdienst VSDM für den Kostenträger [ik] hat das Zeitlimit für eine Antwort überschritten."
    * text = "Fachdienst VSDM für den Kostenträger 103456789 hat das Zeitlimit für eine Antwort überschritten."
  * diagnostics = """
      Wiederholungsversuch im 'Exponential Backoff'-Verfahren gemäß A_25339.
    """
