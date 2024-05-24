CodeSystem: VSDMErrorcodeCS
Id: vsdm-errorcode-cs
Title: "CodeSystem for VSDM errors"
Description: "VSDM errors if Kostentraeger cant provide VSD"
* ^url = "https://gematik.de/fhir/vsdm2/CodeSystem/VSDMErrorcodeCS"
* insert Meta
* ^caseSensitive = true
* ^content = #complete
* #100 "Patient not insured here"
* #110 "Patient not identifyable"
* #120 "Patient treatment not covered"

* #200 "The provided Proof-of-Patient-Presence is invalid"
* #210 "The user role in the provided AccessToken is not allowed to request VSD"

* #300 "Technical error, input data corrupted"
