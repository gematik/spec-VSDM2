Instance: VSDMPayorOrganization-103707692
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Münster"
Description: "Beispielkostenträger Münster"
Usage: #example

* identifier[IKNR].value = "103707692"
* name = "Beispielkostenträger Münster"
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
