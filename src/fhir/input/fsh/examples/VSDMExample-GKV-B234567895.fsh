Instance: VSDMBundle-GKV-B234567895
InstanceOf: VSDMBundle
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Description: "VSDM 2.0-Daten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-B234567895
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc7)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-B234567895
  * resource = VSDMPatient-GKV-B234567895
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-B234567895
  * resource = VSDMCoverageGKV-B234567895
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-103169760
  * resource = VSDMPayorOrganization-103169760
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-103215857
  * resource = VSDMPayorOrganization-103215857


Instance: VSDMPatient-GKV-B234567895
InstanceOf: VSDMPatient
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Description: "Versichertendaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-B234567895
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc7)

* identifier[KVNR].value = "B234567895"
* birthDate = "1988-06-22"
* name[Name]
  * text = "Dr. med. Bernd Benjamin Graf von und zu Buntspecht"
  * family = "Graf von und zu Buntspecht"
    * extension[namenszusatz].valueString = "Graf"
    * extension[nachname].valueString = "Buntspecht"
    * extension[vorsatzwort].valueString = "von und zu"
  * given = "Bernd Benjamin"
  * prefix = "Dr. med."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Buntspechtallee 2A"
    * extension[Hausnummer].valueString = "2a"
    * extension[Strasse].valueString = "Buntspechtallee"
  * city = "Bremen"
  * postalCode = "28211"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-B234567895
InstanceOf: VSDMCoverageGKV
Title: "B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Description: "Versicherungsdaten B234567895 Graf von und zu Buntspecht, Bernd Benjamin (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-B234567895
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc7)

* extension[WOP].valueCoding = $csWOP#03 "Bremen"
* extension[besonderePersonengruppe].valueCoding = #04 "SOZ" // "BSHG (Bundessozialhilfegesetz) § 264 SGB V"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-B234567895
* period
  * start = "2011-04-01"
  * end = "2024-12-31"
* payor[+]
  * reference = $urlVSDMPayorOrganization-103169760
  * identifier[+].value = "103169760"
  * display = "Beispielkostenträger Bremen"
* payor[+]
  * reference = $urlVSDMPayorOrganization-103215857
  * identifier[+].value = "103215857"
  * display = "Beispielkostenträger Bremerhaven"
