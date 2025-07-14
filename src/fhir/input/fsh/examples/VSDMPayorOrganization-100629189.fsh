Instance: VSDMPayorOrganization-100629189
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Potsdam"
Description: "Beispielkostenträger Potsdam"
Usage: #example

* identifier[IKNR].value = "100629189"
* name = "Beispielkostenträger Potsdam"
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
