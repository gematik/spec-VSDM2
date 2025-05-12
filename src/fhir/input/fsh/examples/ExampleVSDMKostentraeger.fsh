Instance: VSDMKostentraegerMain
InstanceOf: VSDMKostentraeger
Title: "Kostenträger (Haupt-IK)"
Usage: #example
* id = "2a6924bf-6e6a-4ef3-b79f-c2138c10712f" // to be discussed: might also be identical to the identifier (IK)
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraeger"
* identifier.value = "12345678"
* name = "Beispiel-Kostenträger (Haupt-IK)"
* type = #ins "Haupt-IK" // text is optional, could be left out

Instance: VSDMKostentraegerBilling
InstanceOf: VSDMKostentraeger
Title: "Kostenträger (Abrechnungs-IK)"
Usage: #example
* id = "d1f7b106-7f99-40d6-9f21-50b051301127" // to be discussed: might also be identical to the identifier (IK)
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraeger"
* identifier.value = "18765432"
* name = "Beispiel-Kostenträger (Abrechnungs-IK)"
* type = #pay "Abrechnungs-IK" // text is optional, could be left out
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
