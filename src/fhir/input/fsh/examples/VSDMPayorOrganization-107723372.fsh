Instance: VSDMPayorOrganization-107723372
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Chemnitz"
Description: "Beispielkostenträger Chemnitz"
Usage: #example

* identifier[IKNR].value = "107723372"
* name = "Beispielkostenträger Chemnitz"
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
