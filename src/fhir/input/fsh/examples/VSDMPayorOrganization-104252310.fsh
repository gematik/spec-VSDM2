Instance: VSDMPayorOrganization-104252310
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Düsseldorf"
Description: "Beispielkostenträger Düsseldorf"
Usage: #example

* identifier[IKNR].value = "104252310"
* name = "Beispielkostenträger Düsseldorf"
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
