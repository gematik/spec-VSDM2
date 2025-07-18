Instance: VSDMPayorOrganization-101316991
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Schleswig-Holstein"
Description: "Beispielkostenträger Schleswig-Holstein"
Usage: #example

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "101316991"
* name = "Beispielkostenträger Schleswig-Holstein"
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
