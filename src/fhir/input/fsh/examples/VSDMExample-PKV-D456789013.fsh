Instance: VSDMBundle-PKV-D456789013
InstanceOf: VSDMBundle
Title: "D456789013 Dohle, Dara (PKV)"
Description: "VSDM 2.0-Daten D456789013 Dohle, Dara (PKV)"
Usage: #example

* id = $idVSDMBundle-PKV-D456789013
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-PKV-D456789013
  * resource = VSDMPatient-PKV-D456789013
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoveragePKV-D456789013
  * resource = VSDMCoveragePKV-D456789013
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-168145671
  * resource = VSDMPayorOrganization-168145671


Instance: VSDMPatient-PKV-D456789013
InstanceOf: VSDMPatient
Title: "D456789013 Dohle, Dara (PKV)"
Description: "Versichertendaten D456789013 Dohle, Dara (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-D456789013
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

* identifier[KVNR].value = "D456789013"
* birthDate = "1970-01-20"
* name[Name]
  * text = "Dr. rer. nat. Dara Dohle"
  * family = "Dohle"
    * extension[nachname].valueString = "Dohle"
  * given = "Dara"
  * prefix = "Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#X "unbestimmt"
* address[StrassenAdresse]
  * line[+] = "Dohlenallee 4-6"
    * extension[Hausnummer].valueString = "4-6"
    * extension[Strasse].valueString = "Blumenweg"
  * city = "Darmstadt"
  * postalCode = "64297"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
* address[PostfachAdresse]
  * line[+] = "Postfach 405060"
    * extension[Postfach].valueString = "Postfach 405060"
  * city = "Darmstadt"
  * postalCode = "64283"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE


Instance: VSDMCoveragePKV-D456789013
InstanceOf: VSDMCoveragePKV
Title: "D456789013 Dohle, Dara (PKV)"
Description: "Versicherungsdaten D456789013 Dohle, Dara (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-D456789013
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0-rc6)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 50
  * extension[wahlarzt].valueBoolean = false
  * extension[belegarzt].valueBoolean = false
* extension[tarifart].valueCoding = #01 "Individualtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV "private Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-PKV-D456789013
* period
  * start = "1980-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168145671
  * identifier[+].value = "168145671"
  * display = "Privatversicherung Saturn"
