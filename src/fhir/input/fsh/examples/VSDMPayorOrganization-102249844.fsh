Instance: VSDMPayorOrganization-102249844
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Hildesheim"
Description: "Beispielkostenträger Hildesheim"
Usage: #example

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "102249844"
* name = "Beispielkostenträger Hildesheim"
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
