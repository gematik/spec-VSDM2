Instance: VSDMOperationOutcome-InvalidKVNR
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_KVNR"
Description: "Beispiel zur Fehlermeldung 'Ungültige oder nicht bekannte Krankenversichertennummer [kvnr].'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Ungültige oder nicht bekannte Krankenversichertennummer 1234567890.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #not-found "Not Found"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_KVNR "Ungültige oder nicht bekannte Krankenversichertennummer [kvnr]."
    * text = "Ungültige oder nicht bekannte Krankenversichertennummer 1234567890."
  * diagnostics = """
      Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1x erneuern. 
      Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service).
    """
  * expression[+] = "http.ZETA-PoPP-Token-Content.patientId"
