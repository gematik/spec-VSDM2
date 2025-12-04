Instance: VSDMTDSCodeIssueSeverity
InstanceOf: ConceptMap
Title: "VSDMTDSCode zu IssueSeverity"
Description: "Ermittlung der IssueSeverity aus dem VSDMTDSCode"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den TDS-Codes die Werte zur Versorgung von VSDMOperationOutcome.issue.severity zu.
    Wichtig: Hier werden nur die TDS-Codes mit Fehler-Adressat "Clientsystem" erfasst, da für Fehler mit Adressat "HTTP-Proxy" keine VSDMOperationOutcome-Ressource erzeugt wird.
  """

* sourceUri = Canonical(VSDMTDSCodeVS)
* targetUri = $vsIssueSeverity
* group[+]
  * source = Canonical(VSDMTDSCodeCS)
  * target = $csIssueSeverity

  * element[+]
    * code = #79010
    * display = "Ungültige Institutionskennung [ik]."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79011
    * display = "Ungültige Krankenversichertennummer [kvnr]."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79012
    * display = "Unbekannte Institutionskennung [ik]."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79013
    * display = "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79014
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79030
    * display = "Der HTTP-Header [header] ist undgültig."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79031
    * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79032
    * display = "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

// FIXME 70949 / SERVICE_INVALID_HTTP_OPERATION
// Kommentierung: Laut Spezifikation soll die Fehlermeldung an den Adressaten Clientsystem gesendet werden. Der Fehler kann aber nur auftreten, wenn der ZETA Guard versagt hat und den Zugriff mit einer Policy-fremden Methode zugelassen hat. Es sollte geprüft werden, ob hierfür nicht der Adressat HTTP Proxy ausreichend ist.

// FIXME 79041 / SERVICE_INVALID_ENDPOINT
// Kommentierung; Laut Spezifikation soll die Fehlermeldung an den Adressaten Clientsystem gesendet werden. Der Fehler kann aber nur auftreten, wenn der ZETA Guard versagt hat und den Zugriff auf einen Policy-fremde Endpunkt zugelassen hat. Es sollte geprüft werden, ob hierfür nicht der Adressat HTTP Proxy ausreichend ist.

  * element[+]
    * code = #79100
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

// FIXME unbekannter Code 79403 / ZETA_DPOP_VALIDATION_ERROR
// FIXME unbekannter Code 79404 / ZETA_INVALID_ACCESSTOKEN
// FIXME unbekannter Code 79405 / ZETA_EXPIRED_ACCESSTOKEN
