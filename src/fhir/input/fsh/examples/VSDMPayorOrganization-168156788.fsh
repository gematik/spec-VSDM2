Instance: VSDMPayorOrganization-168156788
InstanceOf: VSDMPayorOrganization
Title: "Privatversicherung Jupiter"
Description: "Privatversicherung Jupiter"
Usage: #inline

* id = $idVSDMPayorOrganization-168156788
* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "168156788"
* name = "Privatversicherung Jupiter"
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
