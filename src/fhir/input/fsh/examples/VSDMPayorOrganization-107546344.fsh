Instance: VSDMPayorOrganization-107546344
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Konstanz"
Description: "Beispielkostenträger Konstanz"
Usage: #example

* identifier[IKNR].value = "107546344"
* name = "Beispielkostenträger Konstanz"
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
