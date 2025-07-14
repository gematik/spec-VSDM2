Instance: VSDMPayorOrganization-109504155
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Berlin"
Description: "Beispielkostenträger Berlin"
Usage: #example

* identifier[IKNR].value = "109504155"
* name = "Beispielkostenträger Berlin"
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
