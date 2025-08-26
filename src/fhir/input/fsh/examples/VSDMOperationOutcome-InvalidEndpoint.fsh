Instance: VSDMOperationOutcome-InvalidEndpoint
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_ENDPOINT"
Description: "Beispiel zur Fehlermeldung 'Der angefragte Endpunkt [endpoint] wird nicht unterstützt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der angefragte Endpunkt /../etc/passwd wird nicht unterstützt.
      </div>
    """
* issue[+]
  * severity = #fatal "Fatal"
  * code = #not-supported "Content not supported"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_ENDPOINT "Der angefragte Endpunkt [endpoint] wird nicht unterstützt."
    * text = "Der angefragte Endpunkt /../etc/passwd wird nicht unterstützt."
  * diagnostics = """
      Implementierungsfehler beim Clientsystem - der Hersteller des Clientsystems ist zu kontaktieren. 
    """
