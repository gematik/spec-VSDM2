CodeSystem: VSDMErrorcodeCS
Id: vsdm-errorcode-cs
Title: "CodeSystem for VSDM errors"
Description: "VSDM errors if Kostentraeger cant provide VSD"
* ^url = "https://gematik.de/fhir/vsdm2/CodeSystem/VSDMErrorcodeCS"
* insert Meta
* ^caseSensitive = true
* ^content = #complete
// processing
* #100 "Patient not insured here"
* #110 "Patient not identifyable"
* #120 "Patient treatment not covered"

// security
* #200 "The provided Proof-of-Patient-Presence is invalid"
* #210 "The user role in the provided AccessToken is not allowed to request VSD"

// processing
* #300 "Technical error, input data corrupted"

// specific VSDM 2.0 Request Errors
* #79000 "The proof of patient presence token is expired."
* #79010 "Invalid health insurer mark <ik>."
* #79011 "Invalid health insured person number<kvnr>"
* #79020 "The patient record for <kvnr> could not found at health insurer with id <ik> or patient does not exist."
* #79030 "The required header <header> is missing or invalid."
* #79031 "The clientsystem asked for an unsupported media type  <media type>."
* #79032 "The clientsystem asked for an unsupported encoding scheme<encoding scheme>."
* #79033 "The etag_value does not exists or could not processed."

// specific VSDM 2.0 Resource System Errors
* #79100 "Unexpected internal server error."
* #79110 "Health insurer system with id <ik> is offline."
* #79111 "Health insurer system with id <ik> timed out."