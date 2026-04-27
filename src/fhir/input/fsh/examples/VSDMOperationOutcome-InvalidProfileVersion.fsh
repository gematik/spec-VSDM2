Instance: VSDMOperationOutcome-InvalidProfileVersion
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_PROFILE_VERSION"
Description: "Beispiel zur Fehlermeldung 'Die vom Clientsystem angefragte Profilversion [profile_version] wird nicht unterstützt.'"
Usage: #example

* meta
  * profile[0] = Canonical(VSDMOperationOutcome|1.0.0)
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
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_INVALID_PROFILE_VERSION "Die vom Clientsystem angefragte Profilversion [profile_version] wird nicht unterstützt."
    * text = "Die vom Clientsystem angefragte Profilversion 1.42.0 wird nicht unterstützt."
  * diagnostics = """
      Das Clientsystem hat mit dem optionalen Parameter profileVersion eine Profilversion angefordert, die vom Fachdienst nicht unterstützt wird. 
      Das Clientsystem muss den Parameter entweder mit einer unterstützten Version gemäß der aktuellen gematik-Vorgaben füllen oder eine Anfrage ohne den Parameter stellen.
      Wenn das Clientsystem den Parameter nicht übergibt, liefert der Fachdienst die jeweils aktuelle Standardversion.
      Wiederholen Sie die Anfrage unter Angabe eines gültigen Werts oder ohne den optionalen Parameter.
    """
  * expression[+] = "http.profileVersion"
