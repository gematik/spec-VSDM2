Instance: VSDMOperationOutcome-InvalidHTTPOperation
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung SERVICE_INVALID_HTTP_OPERATION"
Description: "Beispiel zur Fehlermeldung 'Die HTTP-Operation [http-operation] wird nicht unterstützt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #value "Element value invalid"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#SERVICE_INVALID_HTTP_OPERATION "Die HTTP-Operation [http-operation] wird nicht unterstützt."
    * text = "Die HTTP-Operation PUT wird nicht unterstützt."
  * diagnostics = """
      Die in der HTTP-Anfrage verwendete Methode (Verb) wird vom VSDM 2.0-Fachdienst nicht unterstützt.
      Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem.
      Es darf nur die Methode GET verwendet werden.
    """
