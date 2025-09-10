Instance: VSDMOperationOutcome-InvalidIK
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_IK"
Description: "Beispiel zur Fehlermeldung 'Ungültige oder nicht bekannte Institutionskennung [ik].'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Ungültige oder nicht bekannte Institutionskennung 103456789.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #not-found "Not Found"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_IK "Ungültige oder nicht bekannte Institutionskennung [ik]."
    * text = "Ungültige oder nicht bekannte Institutionskennung 103456789."
  * diagnostics = """
      Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1x erneuern. 
      Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem oder PoPP-Service) oder der Kostenträger nicht von diesem Farchdienst-Anbieter vertreten wird (fehlerhafter DNS-Eintrag).
    """
  * expression[+] = "http.ZETA-PoPP-Token-Content.insurerId"
