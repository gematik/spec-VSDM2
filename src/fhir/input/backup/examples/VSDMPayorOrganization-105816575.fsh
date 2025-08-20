Instance: VSDMPayorOrganization-105816575
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Wiesbaden"
Description: "Beispielkostenträger Wiesbaden"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "105816575"
* name = "Beispielkostenträger Wiesbaden"
* address
  * country = #DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"

// Beispiel zur Übertragung weitergehender (nicht verpflichtender) Informationen zum Kostenträger
* contact[+]
  * purpose
    * coding = $csContactEntityType#BILL
    * text = "Kontakt für Abrechnungsfragen"
  * telecom[+]
    * system = #phone
    * value = "+4952116391643"
  * telecom[+]
    * system = #email
    * value = "contact@kostentraeger.invalid"
