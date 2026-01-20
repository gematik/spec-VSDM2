Instance: VSDMOperationOutcome-InternalServerError
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung SERVICE_INTERNAL_SERVER_ERROR"
Description: "Beispiel zur Fehlermeldung 'Unerwarteter interner Fehler des Fachdienstes VSDM.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der Versichertenstammdatendienst ist aktuell nicht in der Lage, die Anfrage zu beantworten.
        Bitte verwenden Sie das TI-Lagebild, um sich über mögliche Störungen zu informieren.
        Wiederholen Sie die Anfrage, sobald die Störungen beseitigt sind.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #transient "Transient Issue"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#SERVICE_INTERNAL_SERVER_ERROR "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * text = "Unerwarteter interner Fehler des Fachdienstes VSDM."
  * diagnostics = """
      Es handelt sich um einen internen Fehler des Fachdiensts VSDM 2.0.
      Wiederholen Sie die Anfrage.
      Beachten Sie dazu das in A_25339 in gemSpec_ZETA beschriebene Exponential-Backoff-Verfahren, um eine Überlastung des Diensts oder eine temporäre Sperre aufgrund zuvieler Zugriffe zu vermeiden.
    """
