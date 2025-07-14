Instance: VSDMPayorOrganization-108606009
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Oberfranken"
Description: "Beispielkostenträger Oberfranken"
Usage: #example

* identifier[IKNR].value = "108606009"
* name = "Beispielkostenträger Oberfranken"
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
