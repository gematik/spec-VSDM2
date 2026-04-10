Instance: VSDMBundle-PKV-G789012344
InstanceOf: VSDMBundle
Title: "G789012344 Edle von der Graugans, Gabriele (PKV)"
Description: "VSDM 2.0-Daten G789012344 Edle von der Graugans, Gabriele (PKV)"
Usage: #example

* id = $idVSDMBundle-PKV-G789012344
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc8)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-PKV-G789012344
  * resource = VSDMPatient-PKV-G789012344
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoveragePKV-G789012344
  * resource = VSDMCoveragePKV-G789012344
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-168178900
  * resource = VSDMPayorOrganization-168178900


Instance: VSDMPatient-PKV-G789012344
InstanceOf: VSDMPatient
Title: "G789012344 Edle von der Graugans, Gabriele (PKV)"
Description: "Versichertendaten G789012344 Edle von der Graugans, Gabriele (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-G789012344
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc8)

* identifier[KVNR].value = "G789012344"
* birthDate = "1974-02-12"
* name[Name]
  * text = "Gabriele Edle von der Graugans"
  * family = "Edle von der Graugans"
    * extension[namenszusatz].valueString = "Edle"
    * extension[nachname].valueString = "Graugans"
    * extension[vorsatzwort].valueString = "von der"
  * given = "Gabriele"
* telecom[TIMessengerID]
  * system = $csContactPointSystem#url
  * value = "matrix:@g789012344:demo-ti-messenger"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Am Gänseweiher 66"
    * extension[Hausnummer].valueString = "66"
    * extension[Strasse].valueString = "Am Gänseweiher"
  * city = "Gießen"
  * postalCode = "35392"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE


Instance: VSDMCoveragePKV-G789012344
InstanceOf: VSDMCoveragePKV
Title: "G789012344 Edle von der Graugans, Gabriele (PKV)"
Description: "Versicherungsdaten G789012344 Edle von der Graugans, Gabriele (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-G789012344
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0-rc8)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 0
  * extension[einbett].valueUnsignedInt = 0
  * extension[zweibettEinbettDifferenz].valueUnsignedInt = 0
  * extension[wahlarzt].valueBoolean = false
  * extension[belegarzt].valueBoolean = false
* extension[tarifart].valueCoding = #03 "Basistarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV "private Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-PKV-G789012344
* period
  * start = "1974-02-12"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168178900
  * identifier[+].value = "168178900"
  * display = "Privatversicherung Venus"
