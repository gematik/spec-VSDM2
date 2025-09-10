Instance: VSDMErrorcodeIssueSeverity
InstanceOf: ConceptMap
Title: "VSDMErrorcode zu IssueSeverity"
Description: "Ermittlung der IssueSeverity aus dem VSDMErrorcode"
Usage: #definition

* insert Meta-Inst

* sourceUri = Canonical(VSDMErrorcodeVS)
* targetUri = $vsIssueSeverity
* group[+]
  * source = Canonical(VSDMErrorcodeCS)
  * target = $csIssueSeverity

  // Fehler mit client-seitiger Ursache
  * element[+]
    * code = #VSDSERVICE_INVALID_IK
    * display = "Ungültige oder nicht bekannte Institutionskennung [ik]."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_KVNR                   
    * display = "Ungültige oder nicht bekannte Krankenversichertennummer [kvnr]."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_PATIENT_RECORD_NOT_FOUND       
    * display = "Die Versichertenstammdaten zur Versichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_MISSING_OR_INVALID_HEADER      
    * display = "Der erforderliche HTTP-Header [header] fehlt oder ist undgültig."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_UNSUPPORTED_MEDIATYPE          
    * display = "Der vom Clientsystem angefragte Medientyp [media type] wird nicht unterstützt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_UNSUPPORTED_ENCODING           
    * display = "Das vom Clientsystem angefragte Komprimierungsverfahren [encoding scheme] wird nicht unterstützt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_PATIENT_RECORD_VERSION 
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_HTTP_OPERATION         
    * display = "Die HTTP-Operation [http-operation] wird nicht unterstützt."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_ENDPOINT               
    * display = "Der angefragte Endpunkt [endpoint] wird nicht unterstützt."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  // Fehler mit server-seitiger Ursache
  * element[+]
    * code = #VSDSERVICE_INTERNAL_SERVER_ERROR          
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_VSDD_NOTREACHABLE              
    * display = "Fachdienst VSDM ist für den Kostenträger [ik] nicht erreichbar."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_VSDD_TIMEOUT                   
    * display = "Fachdienst VSDM für den Kostenträger [ik] hat das Zeitlimit für eine Antwort überschritten."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
