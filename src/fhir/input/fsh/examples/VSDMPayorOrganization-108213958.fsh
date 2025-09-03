Instance: VSDMPayorOrganization-108213958
InstanceOf: VSDMPayorOrganization
Title: "Beispielkostenträger Leipzig"
Description: "Beispielkostenträger Leipzig"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPayorOrganization|1.0.0)

* identifier[IKNR].value = "108213958"
* name = "Beispielkostenträger Leipzig"
* address
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
