Instance: VSDMPayorOrganization-102186348
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Hannover"
Description: "Beispielkostenträger Hannover"
Usage: #example

* identifier[IKNR].value = "102186348"
* name = "Beispielkostenträger Hannover"
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
