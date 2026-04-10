Instance: VSDMBundle-PKV-B234567895
InstanceOf: VSDMBundle
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Description: "VSDM 2.0-Daten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Usage: #example

* id = $idVSDMBundle-PKV-B234567895
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc8)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-PKV-B234567895
  * resource = VSDMPatient-PKV-B234567895
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoveragePKV-B234567895
  * resource = VSDMCoveragePKV-B234567895
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-168123458
  * resource = VSDMPayorOrganization-168123458


Instance: VSDMPatient-PKV-B234567895
InstanceOf: VSDMPatient
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Description: "Versichertendaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-B234567895
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc8)

* identifier[KVNR].value = "B234567895"
* birthDate = "1988-06-22"
* name[Name]
  * text = "Dr. med. Bernd Benjamin Graf von und zu Buntspecht"
  * family = "Graf von und zu Buntspecht"
    * extension[namenszusatz].valueString = "Graf"
    * extension[nachname].valueString = "Buntspecht"
    * extension[vorsatzwort].valueString = "von und zu"
  * given = "Bernd Benjamin"
  * prefix = "Dr. med."
    * extension[prefix-qualifier].valueCode = #AC
* telecom[TIMessengerID]
  * system = $csContactPointSystem#url
  * value = "matrix:@b234567895:demo-ti-messenger"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Buntspechtallee 2A"
    * extension[Hausnummer].valueString = "2a"
    * extension[Strasse].valueString = "Buntspechtallee"
  * city = "Bremen"
  * postalCode = "28211"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE


Instance: VSDMCoveragePKV-B234567895
InstanceOf: VSDMCoveragePKV
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Description: "Versicherungsdaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-B234567895
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0-rc8)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 100
  * extension[zweibettEinbettDifferenz].valueUnsignedInt = 25
  * extension[wahlarzt].valueUnsignedInt = 100
  * extension[belegarzt].valueUnsignedInt = 100
* extension[tarifart].valueCoding = #01 "Individualtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV "private Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-PKV-B234567895
* period
  * start = "1980-01-01"
  * end = "2025-12-31"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168123458
  * identifier[+].value = "168123458"
  * display = "Privatversicherung Neptun"
