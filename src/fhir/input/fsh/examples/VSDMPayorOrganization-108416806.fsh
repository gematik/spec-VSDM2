Instance: VSDMPayorOrganization-108416806
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger München-Stadt"
Description: "Beispielkostenträger München-Stadt"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "108416806"
* name = "Beispielkostenträger München-Stadt"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
