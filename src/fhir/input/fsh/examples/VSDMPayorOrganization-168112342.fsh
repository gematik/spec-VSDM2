Instance: VSDMPayorOrganization-168112342
InstanceOf: VSDMPayorOrganization
Title: "Privatversicherung Pluto"
Description: "Privatversicherung Pluto"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "168112342"
* name = "Privatversicherung Pluto"
* address
  * country = #DE

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
