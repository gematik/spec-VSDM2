Instance: VSDMPayorOrganization-101904345
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Braunschweig"
Description: "Beispielkostenträger Braunschweig"
Usage: #example

* identifier[IKNR].value = "101904345"
* name = "Beispielkostenträger Braunschweig"
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
