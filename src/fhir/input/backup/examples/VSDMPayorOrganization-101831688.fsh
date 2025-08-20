Instance: VSDMPayorOrganization-101831688
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Aurich"
Description: "Beispielkostenträger Aurich"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "101831688"
* name = "Beispielkostenträger Aurich"
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
