Instance: VSDMPayorOrganization-168189015
InstanceOf: VSDMPayorOrganization
Title: "Privatversicherung Merkur"
Description: "Privatversicherung Merkur"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "168189015"
* name = "Privatversicherung Merkur"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
