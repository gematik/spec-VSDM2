Instance: VSDMOperationOutcome-UnsupportedMediatype
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_UNSUPPORTED_MEDIATYPE"
Description: "Beispiel zur Fehlermeldung 'Der vom Clientsystem angefragte Medientyp [media type] wird nicht unterstützt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Der vom Clientsystem angefragte Medientyp application/morse-code wird nicht unterstützt.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #value "Element value invalid"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_UNSUPPORTED_MEDIATYPE "Der vom Clientsystem angefragte Medientyp [media type] wird nicht unterstützt."
    * text = "Der vom Clientsystem angefragte Medientyp application/morse-code wird nicht unterstützt."
  * diagnostics = """
      Implementierungsfehler beim Clientsystem - der Hersteller des Clientsystems ist zu kontaktieren.
    """
  * expression[+] = "http.Accept"
