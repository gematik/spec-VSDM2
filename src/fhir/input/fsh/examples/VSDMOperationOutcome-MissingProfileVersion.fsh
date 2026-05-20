Instance: VSDMOperationOutcome-MissingProfileVersion
InstanceOf: VSDMOperationOutcome
Title: "Fehlermeldung VSDSERVICE_INVALID_MISSING_VERSION"
Description: "Beispiel zur Fehlermeldung 'Der erforderliche Query-Parameter 'profileVersion' fehlt.'"
Usage: #example

* meta
  * profile[0] = Canonical(VSDMOperationOutcome|1.0.1)
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
    * coding[0] = VSDMErrorcodeCS#VSDSERVICE_MISSING_PROFILE_VERSION "Der erforderliche Query-Parameter 'profileVersion' fehlt."
    * text = "Der erforderliche Query-Parameter 'profileVersion' fehlt."
  * diagnostics = """
      Das Clientsystem hat den obligatorischen Parameter 'profileVersion' bei der Abfrage nicht angegeben. 
      Das Clientsystem muss den Parameter mit einer unterstützten Major-/Minor-Version gemäß der aktuellen gematik-Vorgaben füllen.
      Wiederholen Sie die Anfrage unter Angabe eines gültigen Werts.
    """
  * expression[+] = "http.profileVersion"
