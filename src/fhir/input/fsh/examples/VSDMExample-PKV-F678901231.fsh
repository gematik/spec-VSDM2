Instance: VSDMBundle-PKV-F678901231
InstanceOf: VSDMBundle
Title: "F678901231 von Fasan, Frank Florian (PKV)"
Description: "VSDM 2.0-Daten F678901231 von Fasan, Frank Florian (PKV)"
Usage: #example

* id = $idVSDMBundle-PKV-F678901231
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-PKV-F678901231
  * resource = VSDMPatient-PKV-F678901231
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoveragePKV-F678901231
  * resource = VSDMCoveragePKV-F678901231
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-168167894
  * resource = VSDMPayorOrganization-168167894


Instance: VSDMPatient-PKV-F678901231
InstanceOf: VSDMPatient
Title: "F678901231 von Fasan, Frank Florian (PKV)"
Description: "Versichertendaten F678901231 von Fasan, Frank Florian (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-F678901231
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "F678901231"
* birthDate = "1983-01-19"
* name[Name]
  * text = "Prof. Dr. med. Frank Florian von Fasan"
  * family = "von Fasan"
    * extension[nachname].valueString = "Fasan"
    * extension[vorsatzwort].valueString = "von"
  * given = "Frank Florian"
  * prefix = "Prof. Dr. med."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Fasanenallee 50"
    * extension[Hausnummer].valueString = "50"
    * extension[Strasse].valueString = "Fasanenallee"
  * city = "Bern"
  * postalCode = "3013"
  * country = "Schweiz"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#CH


Instance: VSDMCoveragePKV-F678901231
InstanceOf: VSDMCoveragePKV
Title: "F678901231 von Fasan, Frank Florian (PKV)"
Description: "Versicherungsdaten F678901231 von Fasan, Frank Florian (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-F678901231
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 0
  * extension[einbett].valueUnsignedInt = 0
  * extension[zweibettEinbettDifferenz].valueUnsignedInt = 0
  * extension[wahlarzt].valueBoolean = false
  * extension[belegarzt].valueBoolean = false
* extension[tarifart].valueCoding = #04 "Notlagentarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV
* beneficiary.reference = $urlVSDMPatient-PKV-F678901231
* period
  * start = "2020-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168167894
