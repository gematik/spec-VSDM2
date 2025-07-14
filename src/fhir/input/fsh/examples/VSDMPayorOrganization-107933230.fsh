Instance: VSDMPayorOrganization-107933230
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Dresden"
Description: "Beispielkostenträger Dresden"
Usage: #example

* identifier[IKNR].value = "107933230"
* name = "Beispielkostenträger Dresden"
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
