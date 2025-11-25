Instance: VSDMOperationOutcome-UnsupportedEncoding
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_UNSUPPORTED_ENCODING"
Description: "Beispiel zur Fehlermeldung 'Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt.'"
Usage: #example

* text
  * status = #generated
  * div[+] = """
      <div xmlns="http://www.w3.org/1999/xhtml">
        Die Abfrage der Versichertenstammdaten war technisch fehlerhaft. Bitte wenden Sie sich an Ihren Systemhersteller.
      </div>
    """
* issue[+]
  * severity = #error "Error"
  * code = #value "Element value invalid"
  * details[+]
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_UNSUPPORTED_ENCODING "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
    * text = "Das vom Clientsystem angefragte Kodierungsverfahren implode wird nicht unterstützt."
  * diagnostics = """
      Das im HTTP Header Accept-Encoding angeforderte Kodierungsschema wird vom VSDM 2.0-Fachdienst nicht unterstützt.
      Der Fachdienst kann die Daten nicht in der gewünschten Kodierung bereitstellen.
      Wiederholen Sie die Anfrage unter Angabe einer unterstützten Kodierung (UTF-8).
    """
  * location[+] = "http.Accept-Encoding"
