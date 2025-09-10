Instance: VSDMPayorOrganization-102186348
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Hannover"
Description: "Beispielkostenträger Hannover"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "102186348"
* name = "Beispielkostenträger Hannover"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
