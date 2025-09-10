Instance: VSDMOperationOutcome-VSDDNotReachable
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_VSDD_NOTREACHABLE"
Description: "Beispiel zur Fehlermeldung 'Fachdienst VSDM ist für den Kostenträger [ik] nicht erreichbar.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Fachdienst VSDM ist für den Kostenträger 103456789 nicht erreichbar.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #no-store "No Store Available"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_VSDD_NOTREACHABLE "Fachdienst VSDM ist für den Kostenträger [ik] nicht erreichbar."
    * text = "Fachdienst VSDM ist für den Kostenträger 103456789 nicht erreichbar."
  * diagnostics = """
      Wiederholungsversuch im 'Exponential Backoff'-Verfahren gemäß A_25339.
    """
