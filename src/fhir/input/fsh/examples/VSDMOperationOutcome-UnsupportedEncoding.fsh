Instance: VSDMOperationOutcome-UnsupportedEncoding
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_UNSUPPORTED_ENCODING"
Description: "Beispiel zur Fehlermeldung 'Das vom Clientsystem angefragte Komprimierungsverfahren [encoding scheme] wird nicht unterstützt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Das vom Clientsystem angefragte Komprimierungsverfahren implode wird nicht unterstützt.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #value "Element value invalid"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_UNSUPPORTED_ENCODING "Das vom Clientsystem angefragte Komprimierungsverfahren [encoding scheme] wird nicht unterstützt."
    * text = "Das vom Clientsystem angefragte Komprimierungsverfahren implode wird nicht unterstützt."
  * diagnostics = """
      Implementierungsfehler beim Clientsystem - der Hersteller des Clientsystems ist zu kontaktieren.
    """
  * location[+] = "http.Content-Encoding"
