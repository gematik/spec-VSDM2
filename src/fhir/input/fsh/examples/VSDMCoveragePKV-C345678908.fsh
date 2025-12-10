Instance: VSDMCoveragePKV-C345678908
InstanceOf: VSDMCoveragePKV
Title: "C345678908 Carolinataube, Charlie (PKV)"
Description: "Versicherungsdaten C345678908 Carolinataube, Charlie (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-C345678908
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0)

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
* type = $csVersicherungsart#PKV
* beneficiary.reference = $urlVSDMPatient-PKV-C345678908
* period
  * start = "2020-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168134565
