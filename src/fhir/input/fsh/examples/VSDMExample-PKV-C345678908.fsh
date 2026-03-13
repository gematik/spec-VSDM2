Instance: VSDMBundle-PKV-C345678908
InstanceOf: VSDMBundle
Title: "C345678908 Carolinataube, Charlie (PKV)"
Description: "VSDM 2.0-Daten C345678908 Carolinataube, Charlie (PKV)"
Usage: #example

* id = $idVSDMBundle-PKV-C345678908
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc7)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-PKV-C345678908
  * resource = VSDMPatient-PKV-C345678908
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoveragePKV-C345678908
  * resource = VSDMCoveragePKV-C345678908
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-168134565
  * resource = VSDMPayorOrganization-168134565


Instance: VSDMPatient-PKV-C345678908
InstanceOf: VSDMPatient
Title: "C345678908 Carolinataube, Charlie (PKV)"
Description: "Versichertendaten C345678908 Carolinataube, Charlie (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-C345678908
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc7)

* identifier[KVNR].value = "C345678908"
* birthDate = "1979-06-11"
* name[Name]
  * text = "Charlie Carolinataube"
  * family = "Carolinataube"
    * extension[nachname].valueString = "Carolinataube"
  * given = "Charlie"
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#D "divers"
* address[StrassenAdresse]
  * line[+] = "Taubenweg 3c"
    * extension[Hausnummer].valueString = "3c"
    * extension[Strasse].valueString = "Taubenweg"
  * line[+] = "zweites Hinterhaus links"
    * extension[Adresszusatz].valueString = "Hinterhaus links"
  * city = "Chemnitz"
  * postalCode = "09128"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE


Instance: VSDMCoveragePKV-C345678908
InstanceOf: VSDMCoveragePKV
Title: "C345678908 Carolinataube, Charlie (PKV)"
Description: "Versicherungsdaten C345678908 Carolinataube, Charlie (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-C345678908
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0-rc7)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 100
  * extension[zweibettEinbettDifferenz].valueUnsignedInt = 25
  * extension[wahlarzt].valueBoolean = false
  * extension[belegarzt].valueBoolean = false
* extension[beihilfe]
  * extension[anspruch].valueBoolean = true
  * extension[quote].valueUnsignedInt = 80
* extension[tarifart].valueCoding = #01 "Individualtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VP "versicherte Person"
* status = #active
* type = $csVersicherungsart#PKV "private Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-PKV-C345678908
* period
  * start = "2020-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168134565
  * identifier[+].value = "168134565"
  * display = "Privatversicherung Uranus"
