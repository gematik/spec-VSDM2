Instance: VSDMBDECodeHTTPStatus
InstanceOf: ConceptMap
Title: "VSDMBDECode zu HTTP Status"
Description: "Ermittlung des HTTP Status aus dem BDECode"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den BDE-Codes die HTTP Status Codes aus Tabelle TAB_FACHDIENST_VSDM_HTTP_STATUS_CODES zu.
  """

* sourceUri = Canonical(VSDMBDECodeVS)
* group[+]
  * source = Canonical(VSDMBDECodeCS)

  * element[+]
    * code = #79010
    * display = "Ungültige Institutionskennung [ik]."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79xxx // TODO hier muss noch ein BDE-Code vergeben werden
    * display = "Unbekannte Institutionskennung [ik]."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79011
    * display = "Ungültige Krankenversichertennummer [kvnr]."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79020
    * display = "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * target[+]
      * code = #404
      * display = "Not Found"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79030
    * display = "Der HTTP-Header [header] ist undgültig."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79031
    * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
    * target[+]
      * code = #406
      * display = "Not Acceptable"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79032
    * display = "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
    * target[+]
      * code = #406
      * display = "Not Acceptable"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79033
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #428
      * display = "Precondition Required"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79040
    * display = "Die HTTP-Operation [http-operation] wird nicht unterstützt."
    * target[+]
      * code = #405
      * display = "Method Not Allowed"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79041
    * display = "Der angefragte Endpunkt [endpoint] wird nicht unterstützt."
    * target[+]
      * code = #403
      * display = "Forbidden"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79100
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #500
      * display = "Internal Server Error"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79206
    * display = "Der HTTP-Header ZETA-User-Info fehlt."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79207
    * display = "Der HTTP-Header ZETA-PoPP-Token-Content fehlt."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79401
    * display = "Der Inhalt des HTTP-Headers ZETA-User-Info weist Format- oder Inhaltsfehler auf."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79402
    * display = "Der Inhalt des HTTP-Headers ZETA-PoPP-Token-Content weist Format- oder Inhaltsfehler auf."
    * target[+]
      * code = #400
      * display = "Bad Request"
      * equivalence = #wider //  target mapping is wider in meaning than the source concept.
