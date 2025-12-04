Instance: VSDMTDSCodeErrorcode
InstanceOf: ConceptMap
Title: "VSDMTDSCode zu VSDMErrorcode"
Description: "Ermittlung des VSDMErrorcode aus dem TDS-Code"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den TDS-Codes die VSDMErrorcodes gemäß Tabelle TAB_FACHDIENST_VSDM_FEHLERREFERENZEN_UND_FEHLERCODES aus Anforderung A_27012-01 zu.
    Wichtig: Hier werden nur die TDS-Codes mit Fehler-Adressat "Clientsystem" erfasst, da für Fehler mit Adressat "HTTP-Proxy" keine VSDMOperationOutcome-Ressource erzeugt wird.
  """

* sourceUri = Canonical(VSDMTDSCodeVS)
* targetUri = Canonical(VSDMErrorcodeVS)
* group[+]
  * source = Canonical(VSDMTDSCodeCS)
  * target = Canonical(VSDMErrorcodeCS)

  * element[+]
    * code = #79010
    * display = "Ungültige Institutionskennung [ik]."
    * target[+]
      * code = #VSDSERVICE_INVALID_IK
      * display = "Ungültige Institutionskennung [ik]."
      * equivalence = #equal

  * element[+]
    * code = #79011
    * display = "Ungültige Krankenversichertennummer [kvnr]."
    * target[+]
      * code = #VSDSERVICE_INVALID_KVNR
      * display = "Ungültige Krankenversichertennummer [kvnr]."
      * equivalence = #equal

  * element[+]
    * code = #79012
    * display = "Unbekannte Institutionskennung [ik]."
    * target[+]
      * code = #VSDSERVICE_UNKNOWN_IK
      * display = "Unbekannte Institutionskennung [ik]."
      * equivalence = #equal

  * element[+]
    * code = #79013
    * display = "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * target[+]
      * code = #VSDSERVICE_UNKNOWN_KVNR
      * display = "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
      * equivalence = #equal

  * element[+]
    * code = #79014
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #VSDSERVICE_INVALID_PATIENT_RECORD_VERSION
      * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
      * equivalence = #equal

  * element[+]
    * code = #79030
    * display = "Der HTTP-Header [header] ist undgültig."
    * target[+]
      * code = #SERVICE_INVALID_HEADER
      * display = "Der HTTP-Header [header] ist undgültig."
      * equivalence = #equal

  * element[+]
    * code = #79031
    * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
    * target[+]
      * code = #SERVICE_UNSUPPORTED_MEDIATYPE
      * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
      * equivalence = #equal

  * element[+]
    * code = #79032
    * display = "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
    * target[+]
      * code = #SERVICE_UNSUPPORTED_ENCODING
      * display = "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
      * equivalence = #equal

// FIXME 70949 / SERVICE_INVALID_HTTP_OPERATION
// Kommentierung: Laut Spezifikation soll die Fehlermeldung an den Adressaten Clientsystem gesendet werden. Der Fehler kann aber nur auftreten, wenn der ZETA Guard versagt hat und den Zugriff mit einer Policy-fremden Methode zugelassen hat. Es sollte geprüft werden, ob hierfür nicht der Adressat HTTP Proxy ausreichend ist.

// FIXME 79041 / SERVICE_INVALID_ENDPOINT
// Kommentierung; Laut Spezifikation soll die Fehlermeldung an den Adressaten Clientsystem gesendet werden. Der Fehler kann aber nur auftreten, wenn der ZETA Guard versagt hat und den Zugriff auf einen Policy-fremde Endpunkt zugelassen hat. Es sollte geprüft werden, ob hierfür nicht der Adressat HTTP Proxy ausreichend ist.

  * element[+]
    * code = #79100
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #SERVICE_INTERNAL_SERVER_ERROR
      * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
      * equivalence = #equal

// FIXME unbekannter Code 79403 / ZETA_DPOP_VALIDATION_ERROR
// FIXME unbekannter Code 79404 / ZETA_INVALID_ACCESSTOKEN
// FIXME unbekannter Code 79405 / ZETA_EXPIRED_ACCESSTOKEN
