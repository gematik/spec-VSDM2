Instance: VSDMPayorOrganization-106044960
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Gera"
Description: "Beispielkostenträger Gera"
Usage: #example

* identifier[IKNR].value = "106044960"
* name = "Beispielkostenträger Gera"
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
