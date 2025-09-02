Instance: VSDMPayorOrganization-168123458
InstanceOf: VSDMPayorOrganization
Title: "Privatversicherung Neptun"
Description: "Privatversicherung Neptun"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "168123458"
* name = "Privatversicherung Neptun"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
