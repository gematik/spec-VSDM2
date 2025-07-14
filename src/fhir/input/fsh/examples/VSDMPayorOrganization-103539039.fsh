Instance: VSDMPayorOrganization-103539039
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Dortmund"
Description: "Beispielkostenträger Dortmund"
Usage: #example

* identifier[IKNR].value = "103539039"
* name = "Beispielkostenträger Dortmund"
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
