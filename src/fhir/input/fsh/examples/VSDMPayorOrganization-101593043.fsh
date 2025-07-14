Instance: VSDMPayorOrganization-101593043
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Hamburg"
Description: "Beispielkostenträger Hamburg"
Usage: #example

* identifier[IKNR].value = "101593043"
* name = "Beispielkostenträger Hamburg"
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
