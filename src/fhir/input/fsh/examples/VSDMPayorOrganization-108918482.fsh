Instance: VSDMPayorOrganization-108918482
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Oberpfalz"
Description: "Beispielkostenträger Oberpfalz"
Usage: #example

* identifier[IKNR].value = "108918482"
* name = "Beispielkostenträger Oberpfalz"
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
