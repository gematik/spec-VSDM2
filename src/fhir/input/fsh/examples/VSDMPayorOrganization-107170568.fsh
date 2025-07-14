Instance: VSDMPayorOrganization-107170568
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Pforzheim"
Description: "Beispielkostenträger Pforzheim"
Usage: #example

* identifier[IKNR].value = "107170568"
* name = "Beispielkostenträger Pforzheim"
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
