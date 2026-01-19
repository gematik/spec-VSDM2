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
    * display = "Institutionskennung [ik] aus dem PoPP-Token weist Formatfehler auf."
    * target[+]
      * code = #VSDSERVICE_INVALID_IK
      * display = "Institutionskennung [ik] aus dem PoPP-Token weist Formatfehler auf."
      * equivalence = #equal

  * element[+]
    * code = #79011
    * display = "Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf."
    * target[+]
      * code = #VSDSERVICE_INVALID_KVNR
      * display = "Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf."
      * equivalence = #equal

  * element[+]
    * code = #79012
    * display = "Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt."
    * target[+]
      * code = #VSDSERVICE_UNKNOWN_IK
      * display = "Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt."
      * equivalence = #equal

  * element[+]
    * code = #79013
    * display = "Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt."
    * target[+]
      * code = #VSDSERVICE_UNKNOWN_KVNR
      * display = "Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt."
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
    * display = "Der HTTP-Header [header] ist ungültig."
    * target[+]
      * code = #SERVICE_INVALID_HEADER
      * display = "Der HTTP-Header [header] ist ungültig."
      * equivalence = #equal

  * element[+]
    * code = #79031
    * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
    * target[+]
      * code = #SERVICE_UNSUPPORTED_MEDIATYPE
      * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
      * equivalence = #equal

  * element[+]
    * code = #79040
    * display = "Die HTTP-Operation [http-operation] wird nicht unterstützt."
    * target[+]
      * code = #SERVICE_INVALID_HTTP_OPERATION
      * display = "Die HTTP-Operation [http-operation] wird nicht unterstützt."
      * equivalence = #equal

  * element[+]
    * code = #79100
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #SERVICE_INTERNAL_SERVER_ERROR
      * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
      * equivalence = #equal
