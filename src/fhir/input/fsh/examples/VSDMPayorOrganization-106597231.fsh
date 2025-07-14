Instance: VSDMPayorOrganization-106597231
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Trier"
Description: "Beispielkostenträger Trier"
Usage: #example

* identifier[IKNR].value = "106597231"
* name = "Beispielkostenträger Trier"
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
