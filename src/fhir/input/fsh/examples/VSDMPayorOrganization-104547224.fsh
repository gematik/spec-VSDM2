Instance: VSDMPayorOrganization-104547224
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Essen"
Description: "Beispielkostenträger Essen"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "104547224"
* name = "Beispielkostenträger Essen"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
