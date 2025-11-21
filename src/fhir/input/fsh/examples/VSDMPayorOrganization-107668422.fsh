Instance: VSDMPayorOrganization-107668422
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Offenburg"
Description: "Beispielkostenträger Offenburg"
Usage: #inline

* id = "019aa691-efa4-7cfc-8f83-82387d397bce"
* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "107668422"
* name = "Beispielkostenträger Offenburg"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D

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
