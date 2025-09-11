Instance: VSDMPayorOrganization-168178900
InstanceOf: VSDMPayorOrganization
Title: "Privatversicherung Venus"
Description: "Privatversicherung Venus"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "168178900"
* name = "Privatversicherung Venus"
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
