Instance: VSDMOperationOutcome-PatientRecordNotFound
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_PATIENT_RECORD_NOT_FOUND"
Description: "Beispiel zur Fehlermeldung 'Die Versichertenstammdaten zur Versichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Die Versichertenstammdaten zur Versichertennummer 1234567890 konnten für die Institutionskennung 103456789 nicht ermittelt werden.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #not-found "Not Found"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_PATIENT_RECORD_NOT_FOUND "Die Versichertenstammdaten zur Versichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * text = "Die Versichertenstammdaten zur Versichertennummer 1234567890 konnten für die Institutionskennung 103456789 nicht ermittelt werden."
  * diagnostics = """
      Nachweis zum Versorgungskontext mittels eGK oder GesundheitsID am PoPP-Service 1x erneuern. 
      Bei erneutem Fehler: Abbruch, da wahrscheinlich ein Implementierungsfehler vorliegt (Clientsystem, PoPP-Service oder Schnittstelle zu KTR-Bestandssystemen).
    """
  * location[+] = "http.ZETA-PoPP-Token-Content.insurerId"
  * location[+] = "http.ZETA-PoPP-Token-Content.patientId"
