Instance: VSDMKostentraegerSample
InstanceOf: VSDMKostentraeger
Title: "Kostenträger"
Usage: #example
* id = "2a6924bf-6e6a-4ef3-b79f-c2138c10712f" // to be discussed: might also be identical to the identifier (IK)
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraeger"
* name = "Beispiel-Kostenträger"

// Haupt-IK
* identifier[haupt-ik].value = "12345678"

// Abrechnungs-IK (optional)
* identifier[abrechnungs-ik].value = "18765432"

// The following lines show an example how additional contact information might be transmitted.
* contact[+].purpose
  * coding = $contactentitytype#BILL
  * text = "Kontakt für Abrechnungsfragen"
* contact[=].telecom[+]
  * system = #phone
  * value = "+490123456789"
* contact[=].telecom[+]
  * system = #email
  * value = "contact@invalid.de"