Instance: VSDMPayorOrganization-107403308
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Freiburg"
Description: "Beispielkostenträger Freiburg"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "107403308"
* name = "Beispielkostenträger Freiburg"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
