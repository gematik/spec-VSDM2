Instance: VSDMPayorOrganization-108546756
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Oberbayern"
Description: "Beispielkostenträger Oberbayern"
Usage: #example

* identifier[IKNR].value = "108546756"
* name = "Beispielkostenträger Oberbayern"
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
