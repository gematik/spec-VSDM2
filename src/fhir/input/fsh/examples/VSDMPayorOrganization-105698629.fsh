Instance: VSDMPayorOrganization-105698629
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Limburg"
Description: "Beispielkostenträger Limburg"
Usage: #example

* identifier[IKNR].value = "105698629"
* name = "Beispielkostenträger Limburg"
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
