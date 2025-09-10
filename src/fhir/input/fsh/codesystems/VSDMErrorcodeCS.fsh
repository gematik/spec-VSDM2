CodeSystem: VSDMErrorcodeCS
Title: "VSDM-Fehlercodes"
Description: "Fachspezifische Fehlercodes im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta-CodeSystem
* ^caseSensitive = true
* ^content = #complete

// Fehler mit client-seitiger Ursache
* #VSDSERVICE_INVALID_IK                     "Ungültige oder nicht bekannte Institutionskennung [ik]."
* #VSDSERVICE_INVALID_KVNR                   "Ungültige oder nicht bekannte Krankenversichertennummer [kvnr]."
* #VSDSERVICE_PATIENT_RECORD_NOT_FOUND       "Die Versichertenstammdaten zur Versichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
* #VSDSERVICE_MISSING_OR_INVALID_HEADER      "Der erforderliche HTTP-Header [header] fehlt oder ist undgültig."
* #VSDSERVICE_UNSUPPORTED_MEDIATYPE          "Der vom Clientsystem angefragte Medientyp [media type] wird nicht unterstützt."
* #VSDSERVICE_UNSUPPORTED_ENCODING           "Das vom Clientsystem angefragte Komprimierungsverfahren [encoding scheme] wird nicht unterstützt."
* #VSDSERVICE_INVALID_PATIENT_RECORD_VERSION "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
* #VSDSERVICE_INVALID_HTTP_OPERATION         "Die HTTP-Operation [http-operation] wird nicht unterstützt."
* #VSDSERVICE_INVALID_ENDPOINT               "Der angefragte Endpunkt [endpoint] wird nicht unterstützt."

// Fehler mit server-seitiger Ursache
* #VSDSERVICE_INTERNAL_SERVER_ERROR          "Unerwarteter interner Fehler des Fachdienstes VSDM."
* #VSDSERVICE_VSDD_NOTREACHABLE              "Fachdienst VSDM ist für den Kostenträger [ik] nicht erreichbar."
* #VSDSERVICE_VSDD_TIMEOUT                   "Fachdienst VSDM für den Kostenträger [ik] hat das Zeitlimit für eine Antwort überschritten."
