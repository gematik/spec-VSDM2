Instance: VSDMPayorOrganization-104178397
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Aachen"
Description: "Beispielkostenträger Aachen"
Usage: #example

* identifier[IKNR].value = "104178397"
* name = "Beispielkostenträger Aachen"
* address
  * country = #DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"

// Beispiel zur Übertragung weitergehender (nicht verpflichtender) Informationen zum Kostenträger
* contact[+]
  * purpose
    * coding = #BILL
    * text = "Kontakt für Abrechnungsfragen"
  * telecom[+]
    * system = #phone
    * value = "+4952116391643"
  * telecom[+]
    * system = #email
    * value = "contact@kostentraeger.invalid"
