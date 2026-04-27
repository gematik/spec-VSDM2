Instance: VSDMPayorOrganization-108546756
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Oberbayern"
Description: "Beispielkostenträger Oberbayern"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "108546756"
* name = "Beispielkostenträger Oberbayern"
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
