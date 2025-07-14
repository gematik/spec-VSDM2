Instance: VSDMPayorOrganization-105929412
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Erfurt"
Description: "Beispielkostenträger Erfurt"
Usage: #example

* identifier[IKNR].value = "105929412"
* name = "Beispielkostenträger Erfurt"
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
