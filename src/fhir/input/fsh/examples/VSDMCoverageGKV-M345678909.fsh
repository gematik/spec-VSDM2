Instance: VSDMCoverageGKV-M345678909
InstanceOf: VSDMCoverageGKV
Title: "M345678909 Mittelspecht, Michael-Martin (GKV)"
Description: "Versicherungsdaten M345678909 Mittelspecht, Michael-Martin (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-M345678909
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0)

* extension[WOP].valueCoding = $csWOP#71 "Bayern"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2038-04-28"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-M345678909
* period
  * start = "2020-04-27"
* payor[+]
  * reference = $urlVSDMPayorOrganization-108416806
  * extension[kostentraegerRolle].valueCoding = #H "Haupt-Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
