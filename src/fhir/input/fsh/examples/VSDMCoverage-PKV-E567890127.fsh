Instance: VSDMCoverage-PKV-E567890127
InstanceOf: VSDMCoverage
Title: "E567890127 Freifrau an der Elster, Elke (PKV)"
Description: "Versicherungsdaten E567890127 Freifrau an der Elster, Elke (PKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMCoverage|1.0.0)

* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 100
  * extension[einbett].valueUnsignedInt = 100
  * extension[wahlarzt].valueBoolean = false
  * extension[belegarzt].valueBoolean = false
* extension[sozialtarif].valueCoding = #S "Standardtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV
* beneficiary.reference = "Patient/VSDMPatient-PKV-E567890127"
* period
  * start = "2020-01-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization-168156788"
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger"
