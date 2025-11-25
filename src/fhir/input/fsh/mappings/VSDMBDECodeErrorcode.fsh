Instance: VSDMBDECodeErrorcode
InstanceOf: ConceptMap
Title: "VSDMBDECode zu VSDMErrorcode"
Description: "Ermittlung des VSDMErrorcode aus dem BDE-Code"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den BDE-Codes die VSDMErrorcodes gemäß Tabelle TAB_FACHDIENST_VSDM_FEHLER-REFERENZEN_UND_BDE-CODES aus Anforderung A_27012-01 zu.
    Wichtig: Hier werden nur die BDE-Codes mit Fehler-Adressat "Clientsystem" erfasst, da für Fehler mit Adressat "HTTP-Proxy" keine VSDMOperationOutcome-Ressource erzeugt wird.
  """

* sourceUri = Canonical(VSDMBDECodeVS)
* targetUri = Canonical(VSDMErrorcodeVS)
* group[+]
  * source = Canonical(VSDMBDECodeCS)
  * target = Canonical(VSDMErrorcodeCS)

  * element[+]
    * code = #79010
    * display = "Ungültige Institutionskennung [ik]."
    * target[+]
      * code = #VSDSERVICE_INVALID_IK
      * display = "Ungültige Institutionskennung [ik]."
      * equivalence = #equal

  * element[+]
    * code = #79xxx // TODO hier muss noch ein BDE-Code vergeben werden
    * display = "Unbekannte Institutionskennung [ik]."
    * target[+]
      * code = #VSDSERVICE_UNKNOWN_IK
      * display = "Unbekannte Institutionskennung [ik]."
      * equivalence = #equal

  * element[+]
    * code = #79011
    * display = "Ungültige Krankenversichertennummer [kvnr]."
    * target[+]
      * code = #VSDSERVICE_INVALID_KVNR
      * display = "Ungültige Krankenversichertennummer [kvnr]."
      * equivalence = #equal

  * element[+]
    * code = #79020
    * display = "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * target[+]
      * code = #VSDSERVICE_PATIENT_RECORD_NOT_FOUND
      * display = "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
      * equivalence = #equal

  * element[+]
    * code = #79030
    * display = "Der HTTP-Header [header] ist undgültig."
    * target[+]
      * code = #VSDSERVICE_INVALID_HEADER
      * display = "Der HTTP-Header [header] ist undgültig."
      * equivalence = #equal

  * element[+]
    * code = #79031
    * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
    * target[+]
      * code = #VSDSERVICE_UNSUPPORTED_MEDIATYPE
      * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
      * equivalence = #equal

  * element[+]
    * code = #79032
    * display = "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
    * target[+]
      * code = #VSDSERVICE_UNSUPPORTED_ENCODING
      * display = "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
      * equivalence = #equal

  * element[+]
    * code = #79033
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #VSDSERVICE_INVALID_PATIENT_RECORD_VERSION
      * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
      * equivalence = #equal

  * element[+]
    * code = #79100
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #VSDSERVICE_INTERNAL_SERVER_ERROR
      * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
      * equivalence = #equal
