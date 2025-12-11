Instance: VSDMCoveragePKV-A123456780
InstanceOf: VSDMCoveragePKV
Title: "A123456780 Amsel, Andrea (PKV)"
Description: "Versicherungsdaten A123456780 Amsel, Andrea (PKV)"
Usage: #inline

* id = $idVSDMCoveragePKV-A123456780
* meta.profile[0] = Canonical(VSDMCoveragePKV|1.0.0)

* extension[hinweis]
  * extension[text].valueMarkdown = "Beihilfetaxe für Physio"
* extension[krankenhaus]
  * extension[allgemein].valueUnsignedInt = 100
  * extension[zweibett].valueUnsignedInt = 100
  * extension[einbett].valueUnsignedInt = 100
  * extension[wahlarzt].valueUnsignedInt = 100
  * extension[belegarzt].valueUnsignedInt = 100 
* extension[tarifart].valueCoding = #01 "Individualtarif"
* extension[versichertenart].valueCoding = VSDMVersichertenartPKVCS#VN "Versicherungsnehmer"
* status = #active
* type = $csVersicherungsart#PKV
* beneficiary.reference = $urlVSDMPatient-PKV-A123456780
* period
  * start = "2020-01-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-168112342
