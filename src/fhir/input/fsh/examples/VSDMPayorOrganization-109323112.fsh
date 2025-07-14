Instance: VSDMPayorOrganization-109323112
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Saarland"
Description: "Beispielkostenträger Saarland"
Usage: #example

* identifier[IKNR].value = "109323112"
* name = "Beispielkostenträger Saarland"
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
