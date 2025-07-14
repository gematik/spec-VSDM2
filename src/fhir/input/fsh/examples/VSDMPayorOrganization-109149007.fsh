Instance: VSDMPayorOrganization-109149007
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Schwaben"
Description: "Beispielkostenträger Schwaben"
Usage: #example

* identifier[IKNR].value = "109149007"
* name = "Beispielkostenträger Schwaben"
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
