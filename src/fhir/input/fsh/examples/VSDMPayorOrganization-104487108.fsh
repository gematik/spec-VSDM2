Instance: VSDMPayorOrganization-104487108
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Duisburg"
Description: "Beispielkostenträger Duisburg"
Usage: #example

* identifier[IKNR].value = "104487108"
* name = "Beispielkostenträger Duisburg"
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
