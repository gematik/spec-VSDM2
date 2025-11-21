Instance: VSDMPayorOrganization-168134565
InstanceOf: VSDMPayorOrganization
Title: "Privatversicherung Uranus"
Description: "Privatversicherung Uranus"
Usage: #inline

* id = "019aa691-3a52-7536-acd9-2ec675894780"
* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "168134565"
* name = "Privatversicherung Uranus"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE

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
