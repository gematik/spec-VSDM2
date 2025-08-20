Instance: VSDMPayorOrganization-105395861
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Frankfurt"
Description: "Beispielkostenträger Frankfurt"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "105395861"
* name = "Beispielkostenträger Frankfurt"
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
