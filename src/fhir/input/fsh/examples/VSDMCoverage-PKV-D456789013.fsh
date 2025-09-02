Instance: VSDMCoverage-PKV-D456789013
InstanceOf: VSDMCoverage
Title: "D456789013 Dohle, Dara (PKV)"
Description: "Versicherungsdaten D456789013 Dohle, Dara (PKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 50
  * extension[wahlarzt].valueBoolean = false
  * extension[belegarzt].valueBoolean = false
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV
* beneficiary.reference = "Patient/VSDMPatient-PKV-D456789013"
* period
  * start = "1980-01-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-168145671"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
