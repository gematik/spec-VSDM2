Instance: VSDMPayorOrganization-107837745
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Süd-Württemberg"
Description: "Beispielkostenträger Süd-Württemberg"
Usage: #example

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "107837745"
* name = "Beispielkostenträger Süd-Württemberg"
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
