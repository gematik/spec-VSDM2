Instance: VSDMCoveragePKV-B234567895
InstanceOf: VSDMCoveragePKV
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Description: "Versicherungsdaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (PKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 100
  * extension[zweibettEinbettDifferenz].valueUnsignedInt = 25
  * extension[wahlarzt].valueUnsignedInt = 100
  * extension[belegarzt].valueUnsignedInt = 100
* extension[tarifart].valueCoding = #01 "Individualtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV
* beneficiary.reference = "Patient/VSDMPatient-PKV-B234567895"
* period
  * start = "1980-01-01"
  * end = "2025-12-31"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-168123458"
