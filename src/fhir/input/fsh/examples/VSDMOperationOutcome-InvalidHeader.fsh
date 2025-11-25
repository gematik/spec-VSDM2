Instance: VSDMOperationOutcome-InvalidHeader
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_HEADER"
Description: "Beispiel zur Fehlermeldung 'Der HTTP-Header [header] ist undgültig.'"
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
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_HEADER "Der HTTP-Header [header] ist undgültig."
    * text = "Der HTTP-Header ZETA-PoPP-Token ist undgültig."
  * diagnostics = """
      Der angegebene HTTP Header enthält nicht spezifikationskonforme Angaben.
      Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem.
      Prüfen Sie den Aufbau des Headers gegen die einschlägigen Standards (v.A. RFC 2616) und korrigieren Sie die Anfrage entsprechend.
    """
  * location[+] = "http.ZETA-PoPP-Token"
