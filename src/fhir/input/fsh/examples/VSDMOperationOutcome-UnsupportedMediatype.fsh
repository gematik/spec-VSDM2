Instance: VSDMOperationOutcome-UnsupportedMediatype
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung SERVICE_UNSUPPORTED_MEDIATYPE"
Description: "Beispiel zur Fehlermeldung 'Das vom Clientsystem angefragte Datenformat [media_type] wird nicht unterstützt.'"
Usage: #example

* meta
  * profile[0] = Canonical(VSDMOperationOutcome|1.0.0-rc8)
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
    * coding[0] = VSDMErrorcodeCS#SERVICE_UNSUPPORTED_MEDIATYPE "Das vom Clientsystem angefragte Datenformat [media_type] wird nicht unterstützt."
    * text = "Das vom Clientsystem angefragte Datenformat application/morse-code wird nicht unterstützt."
  * diagnostics = """
      Das im HTTP Header Accept angeforderte Datenformat wird vom VSDM 2.0-Fachdienst nicht unterstützt.
      Hierbei handelt es sich in der Regel um einen Implementierungsfehler im Clientsystem.
      Es sind nur die Formate application/fhir+xml und application/fhir+json erlaubt.
      Stellen Sie sicher, dass nur die genannten Formate verwendet werden.
    """
  * expression[+] = "http.Accept"
