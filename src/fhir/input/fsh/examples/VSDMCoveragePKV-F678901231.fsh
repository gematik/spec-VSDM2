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
