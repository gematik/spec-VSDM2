Instance: VSDMErrorcodeIssueType
InstanceOf: ConceptMap
Title: "VSDMErrorcode zu IssueType"
Description: "Ermittlung des IssueType aus dem VSDMErrorcode"
Usage: #definition

* insert Meta-Inst

* sourceUri = Canonical(VSDMErrorcodeVS)
* targetUri = $vsIssueType
* group[+]
  * source = Canonical(VSDMErrorcodeCS)
  * target = $csIssueType

  // Fehler mit client-seitiger Ursache
  * element[+]
    * code = #VSDSERVICE_INVALID_IK
    * display = "Ungültige oder nicht bekannte Institutionskennung [ik]."
    * target[+]
      * code = #not-found
      * display = "Not Found"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_KVNR                   
    * display = "Ungültige oder nicht bekannte Krankenversichertennummer [kvnr]."
    * target[+]
      * code = #not-found
      * display = "Not Found"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_PATIENT_RECORD_NOT_FOUND       
    * display = "Die Versichertenstammdaten zur Versichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * target[+]
      * code = #not-found
      * display = "Not Found"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_MISSING_OR_INVALID_HEADER      
    * display = "Der erforderliche HTTP-Header [header] fehlt oder ist undgültig."
    * target[+]
      * code = #required
      * display = "Required element missing"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
      * comment = "Wenn der Header komplett fehlt."
    * target[+]
      * code = #value
      * display = "Element value invalid"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
      * comment = "Wenn der Header-Wert ungültig ist."
    * target[+]
      * code = #invalid
      * display = "Invalid Content"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
      * comment = "Wenn keine Unterscheidung zwischen required und value möglich ist."
  * element[+]
    * code = #VSDSERVICE_UNSUPPORTED_MEDIATYPE          
    * display = "Der vom Clientsystem angefragte Medientyp [media type] wird nicht unterstützt."
    * target[+]
      * code = #value
      * display = "Element value invalid"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_UNSUPPORTED_ENCODING           
    * display = "Das vom Clientsystem angefragte Komprimierungsverfahren [encoding scheme] wird nicht unterstützt."
    * target[+]
      * code = #value
      * display = "Element value invalid"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_PATIENT_RECORD_VERSION 
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #value
      * display = "Element value invalid"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_HTTP_OPERATION         
    * display = "Die HTTP-Operation [http-operation] wird nicht unterstützt."
    * target[+]
      * code = #not-supported
      * display = "Content not supported"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_INVALID_ENDPOINT               
    * display = "Der angefragte Endpunkt [endpoint] wird nicht unterstützt."
    * target[+]
      * code = #not-supported
      * display = "Content not supported"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  // Fehler mit server-seitiger Ursache
  * element[+]
    * code = #VSDSERVICE_INTERNAL_SERVER_ERROR          
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #transient
      * display = "Transient Issue"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_VSDD_NOTREACHABLE              
    * display = "Fachdienst VSDM ist für den Kostenträger [ik] nicht erreichbar."
    * target[+]
      * code = #no-store
      * display = "No Store Available"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
  * element[+]
    * code = #VSDSERVICE_VSDD_TIMEOUT                   
    * display = "Fachdienst VSDM für den Kostenträger [ik] hat das Zeitlimit für eine Antwort überschritten."
    * target[+]
      * code = #timeout
      * display = "Timeout"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
