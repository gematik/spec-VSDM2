Instance: VSDMCoveragePKV-G789012344
InstanceOf: VSDMCoveragePKV
Title: "G789012344 Edle von der Graugans, Gabriele (PKV)"
Description: "Versicherungsdaten G789012344 Edle von der Graugans, Gabriele (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-G789012344
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0)

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
* type = $csVersicherungsart#PKV
* beneficiary.reference = $urlVSDMPatient-PKV-G789012344
* period
  * start = "1974-02-12"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-168178900"
