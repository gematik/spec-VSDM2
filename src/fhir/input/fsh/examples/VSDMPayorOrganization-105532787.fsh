Instance: VSDMPayorOrganization-105532787
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Kassel"
Description: "Beispielkostenträger Kassel"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "105532787"
* name = "Beispielkostenträger Kassel"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
