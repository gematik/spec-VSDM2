Instance: VSDMOperationOutcome-InvalidHeader
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung SERVICE_INVALID_HEADER"
Description: "Beispiel zur Fehlermeldung 'Der HTTP-Header [header] ist ungültig.'"
Usage: #example

* meta
  * profile[0] = Canonical(VSDMOperationOutcome|1.0.0)
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
    * coding[0] = VSDMErrorcodeCS#SERVICE_INVALID_HEADER "Der HTTP-Header [header] ist ungültig."
    * text = "Der HTTP-Header Accept ist ungültig."
  * diagnostics = """
      Der angegebene HTTP Header enthält nicht spezifikationskonforme Angaben.
      Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem.
      Prüfen Sie den Aufbau des Headers gegen die einschlägigen Standards (v.A. RFC 9110) und korrigieren Sie die Anfrage entsprechend.
    """
  * location[+] = "http.Accept"
