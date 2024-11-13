CodeSystem: VSDMErrorcodeCS
Id: vsdm-errorcode-cs
Title: "CodeSystem for VSDM errors"
Description: "VSDM errors if Kostentraeger cant provide VSD"
* ^url = "https://gematik.de/fhir/vsdm2/CodeSystem/VSDMErrorcodeCS"
* insert Meta
* ^caseSensitive = true
* ^content = #complete
// client
* #VSDSERVICE_POPPTOKEN_EXPIRED "The proof of patient presence token is expired."
* #VSDSERVICE_INVALID_IK "Invalid health insurer mark <ik>."
* #VSDSERVICE_INVALID_KVNR "Invalid health insured person number <kvnr>."
* #VSDSERVICE_PATIENT_RECORD_NOT_FOUND "The patient record for <kvnr> could not found at health insurer with id <ik>."
* #VSDSERVICE_MISSING_OR_INVALID_HEADER "The required header <header> is missing or invalid."
* #VSDSERVICE_UNSUPPORTED_MEDIATYPE "The clientsystem asked for an unsupported media type <media type>."
* #VSDSERVICE_UNSUPPORTED_ENCODING "The clientsystem asked for an unsupported encoding scheme <encoding scheme>."
* #VSDSERVICE_INVALID_PATIENT_RECORD_VERSION "The etag_value does not exists or could not processed."
* #VSDSERVICE_INVALID_HTTP_OPERATION "ERROR"
* #VSDSERVICE_INVALID_ENDPOINT "ERROR"

// system
* #VSD_SERVICE_INTERNAL_SERVER_ERROR "Unexpected internal server error."
* #VSDSERVICE_VSDDB_NOTREACHABLE "Health insurer system with id <ik> is offline."
* #VSDSERVICE_VSDDB_TIMEOUT "Health insurer system with id <ik> timed out."