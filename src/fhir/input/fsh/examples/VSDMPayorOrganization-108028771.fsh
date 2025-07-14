Instance: VSDMPayorOrganization-108028771
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Nord-Württemberg"
Description: "Beispielkostenträger Nord-Württemberg"
Usage: #example

* identifier[IKNR].value = "108028771"
* name = "Beispielkostenträger Nord-Württemberg"
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
