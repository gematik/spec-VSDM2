Instance: VSDMBundle-PKV-A123456780
InstanceOf: VSDMBundle
Title: "A123456780 Amsel, Andrea (PKV)"
Description: "VSDM 2.0-Daten A123456780 Amsel, Andrea (PKV)"
Usage: #example

* id = $idVSDMBundle-PKV-A123456780
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc8)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-PKV-A123456780
  * resource = VSDMPatient-PKV-A123456780
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoveragePKV-A123456780
  * resource = VSDMCoveragePKV-A123456780
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-168112342
  * resource = VSDMPayorOrganization-168112342


Instance: VSDMPatient-PKV-A123456780
InstanceOf: VSDMPatient
Title: "A123456780 Amsel, Andrea (PKV)"
Description: "Versichertendaten A123456780 Amsel, Andrea (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-A123456780
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc8)

* identifier[KVNR].value = "A123456780"
* birthDate = "1997-12-28"
* name[Name]
  * text = "Andrea Amsel"
  * family = "Amsel"
    * extension[nachname].valueString = "Amsel"
  * given = "Andrea"
* telecom[TIMessengerID]
  * system = $csContactPointSystem#url
  * value = "matrix:@a123456780:demo-ti-messenger"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Amselweg 1"
    * extension[Hausnummer].valueString = "1"
    * extension[Strasse].valueString = "Amselweg"
  * city = "Aachen"
  * postalCode = "52070"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE


Instance: VSDMCoveragePKV-A123456780
InstanceOf: VSDMCoveragePKV
Title: "A123456780 Amsel, Andrea (PKV)"
Description: "Versicherungsdaten A123456780 Amsel, Andrea (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-A123456780
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0-rc8)

* extension[hinweis]
  * extension[text].valueMarkdown = "Beihilfetaxe für Physio"
* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 100
  * extension[einbett].valueUnsignedInt = 100
  * extension[wahlarzt].valueUnsignedInt = 100
  * extension[belegarzt].valueUnsignedInt = 100 
* extension[tarifart].valueCoding = #01 "Individualtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV "private Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-PKV-A123456780
* period
  * start = "2020-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168112342
  * identifier[+].value = "168112342"
  * display = "Privatversicherung Pluto"
