Instance: VSDMOperationOutcome-MissingOrInvalidHeader
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_MISSING_OR_INVALID_HEADER"
Description: "Beispiel zur Fehlermeldung 'Der erforderliche HTTP-Header [header] fehlt oder ist undgültig.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der erforderliche HTTP-Header ZETA-PoPP-Token fehlt oder ist undgültig.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #required "Required element missing"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_MISSING_OR_INVALID_HEADER "Der erforderliche HTTP-Header [header] fehlt oder ist undgültig."
    * text = "Der erforderliche HTTP-Header ZETA-PoPP-Token fehlt oder ist undgültig."
  * diagnostics = """
      Im Falle des Headers PoPP: Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1x erneuern. 
      Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem).
    """
  * location[+] = "http.ZETA-PoPP-Token"
