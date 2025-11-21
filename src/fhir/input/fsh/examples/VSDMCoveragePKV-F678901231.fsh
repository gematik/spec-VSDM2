Instance: VSDMCoveragePKV-F678901231
InstanceOf: VSDMCoveragePKV
Title: "F678901231 von Fasan, Frank Florian (PKV)"
Description: "Versicherungsdaten F678901231 von Fasan, Frank Florian (PKV)"
Usage: #inline

* id = "019aa694-edc7-7231-9184-c2910d4cf37f"
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
* beneficiary.reference = "Patient/VSDMPatient-PKV-F678901231"
* period
  * start = "2020-01-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-168167894"
