Instance: VSDMOperationOutcome-UnknownKVNR
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_UNKNOWN_KVNR"
Description: "Beispiel zur Fehlermeldung 'Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der Patient mit der angegebenen Krankenversicherungsnummer ist bei der angesprochenen Versicherung nicht bekannt.
        Wiederholen Sie die Stammdatenabfrage; falls der Fehler bestehen bleibt, prüfen Sie mit dem Versicherten die Gültigkeit seines Versicherungsanspruchs.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #not-found "Not Found"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_UNKNOWN_KVNR "Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt."
    * text = "Die Versichertenstammdaten zur Versichertennummer 1234567890 konnten für die Institutionskennung 103456789 nicht ermittelt werden."
  * diagnostics = """
      Der Patient mit der angegebenen Krankenversicherungsnummer ist bei der angesprochenen Versicherung nicht bekannt.
      Fordern Sie ein neues PoPP-Token an. Wiederholen Sie die Dienstlokalisierung, um den korrekten zuständigen Fachdienst zu ermitteln und wiederholen Sie die Abfrage.
      Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern weisen Sie die Anwender auf ein möglicherweise ausgelaufenes Versicherungsverhältnis hin.
    """
  * location[+] = "http.ZETA-PoPP-Token-Content.insurerId"
  * location[+] = "http.ZETA-PoPP-Token-Content.patientId"
