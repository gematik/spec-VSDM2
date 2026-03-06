Instance: VSDMBundle-PKV-E567890127
InstanceOf: VSDMBundle
Title: "E567890127 Freifrau an der Elster, Elke (PKV)"
Description: "VSDM 2.0-Daten E567890127 Freifrau an der Elster, Elke (PKV)"
Usage: #example

* id = $idVSDMBundle-PKV-E567890127
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-PKV-E567890127
  * resource = VSDMPatient-PKV-E567890127
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoveragePKV-E567890127
  * resource = VSDMCoveragePKV-E567890127
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-168156788
  * resource = VSDMPayorOrganization-168156788


Instance: VSDMPatient-PKV-E567890127
InstanceOf: VSDMPatient
Title: "E567890127 Freifrau an der Elster, Elke (PKV)"
Description: "Versichertendaten E567890127 Freifrau an der Elster, Elke (PKV)"
Usage: #inline

* id = $idVSDMPatient-PKV-E567890127
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

* identifier[KVNR].value = "E567890127"
* birthDate = "1992-11-13"
* name[Name]
  * text = "Elke Freifrau an der Elster"
  * family = "Freifrau an der Elster"
    * extension[namenszusatz].valueString = "Freifrau"
    * extension[nachname].valueString = "Elster"
    * extension[vorsatzwort].valueString = "an der"
  * given = "Elke"
* telecom[TIMessengerID]
  * system = $csContactPointSystem#url
  * value = "matrix:@e567890127:demo-ti-messenger"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Elsterstraße 5"
    * extension[Hausnummer].valueString = "5"
    * extension[Strasse].valueString = "Elsterstraße"
  * city = "Erfurt"
  * postalCode = "99095"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
* address[PostfachAdresse]
  * line[+] = "Postfach 9821"
    * extension[Postfach].valueString = "Postfach 9821"
  * city = "Graz"
  * postalCode = "8055"
  * country = "Österreich"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#AT


Instance: VSDMCoveragePKV-E567890127
InstanceOf: VSDMCoveragePKV
Title: "E567890127 Freifrau an der Elster, Elke (PKV)"
Description: "Versicherungsdaten E567890127 Freifrau an der Elster, Elke (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-E567890127
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0-rc6)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 100
  * extension[einbett].valueUnsignedInt = 100
  * extension[wahlarzt].valueBoolean = false
  * extension[belegarzt].valueBoolean = false
* extension[tarifart].valueCoding = #02 "Standardtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV
* beneficiary.reference = $urlVSDMPatient-PKV-E567890127
* period
  * start = "2020-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168156788
