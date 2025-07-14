Instance: VSDMPayorOrganization-107078689
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Mannheim"
Description: "Beispielkostenträger Mannheim"
Usage: #example

* identifier[IKNR].value = "107078689"
* name = "Beispielkostenträger Mannheim"
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
