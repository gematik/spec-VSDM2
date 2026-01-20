Instance: VSDMOperationOutcome-InvalidKVNR
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_KVNR"
Description: "Beispiel zur Fehlermeldung 'Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der von Ihrem Anwendungssystem vorgelegte elektronische Nachweis des Versorgungskontexts ist fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #value "Element value invalid"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_KVNR "Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf."
    * text = "Ungültige Krankenversichertennummer 1234567890."
  * diagnostics = """
      Die im PoPP-Token enthaltene Krankenversicherungsnummer ist ungültig (Formatfehler).
      Fordern Sie ein neues PoPP-Token an und wiederholen Sie die Abfrage beim zuständigen VSDM 2.0-Fachdienst.
      Bei erneutem Fehler wiederholen Sie die Abfrage nicht, sondern brechen Sie mit einer Fehlermeldung ab.
      In diesem Fall liegt wahrscheinlich eine Störung des zentralen PoPP-Service vor.
    """
  * location[+] = "http.ZETA-PoPP-Token-Content.patientId"
