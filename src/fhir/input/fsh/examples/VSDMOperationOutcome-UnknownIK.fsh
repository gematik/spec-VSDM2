Instance: VSDMOperationOutcome-UnknownIK
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_UNKNOWN_IK"
Description: "Beispiel zur Fehlermeldung 'Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #not-found "Not Found"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_UNKNOWN_IK "Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt."
    * text = "Unbekannte Institutionskennung 103456789."
  * diagnostics = """
      Die im PoPP-Token angegebene IK der Versicherung ist dem angesprochenen VSDM 2.0-Fachdienst nicht bekannt.
      Fordern Sie ein neues PoPP-Token an. Wiederholen Sie die Dienstlokalisierung, um den korrekten zuständigen Fachdienst zu ermitteln und wiederholen Sie die Abfrage.
      Bei erneutem Fehler wiederholen Sie die Abfrage mit größerem zeitlichen Abstand, um eventuell geänderte DNS-Einstellungen wirksam werden zu lassen. Halten Sie die Anwender über den Status informiert.
      Bei Andauern des Fehlers über 24 h liegt möglicherweise ein Fehler in der Implementierung des Clientsystems oder des Fachdients vor.
    """
  * location[+] = "http.ZETA-PoPP-Token-Content.insurerId"
