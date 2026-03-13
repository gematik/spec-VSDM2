Instance: VSDMBundle-GKV-F678901231
InstanceOf: VSDMBundle
Title: "F678901231 von Fasan, Frank Florian (GKV)"
Description: "VSDM 2.0-Daten F678901231 von Fasan, Frank Florian (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-F678901231
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc7)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-F678901231
  * resource = VSDMPatient-GKV-F678901231
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-F678901231
  * resource = VSDMCoverageGKV-F678901231
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-107403308
  * resource = VSDMPayorOrganization-107403308


Instance: VSDMPatient-GKV-F678901231
InstanceOf: VSDMPatient
Title: "F678901231 von Fasan, Frank Florian (GKV)"
Description: "Versichertendaten F678901231 von Fasan, Frank Florian (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-F678901231
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc7)

* identifier[KVNR].value = "F678901231"
* birthDate = "1983-01-19"
* name[Name]
  * text = "Prof. Dr. med. Frank Florian von Fasan"
  * family = "von Fasan"
    * extension[nachname].valueString = "Fasan"
    * extension[vorsatzwort].valueString = "von"
  * given = "Frank Florian"
  * prefix = "Prof. Dr. med."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Fasanenallee 50"
    * extension[Hausnummer].valueString = "50"
    * extension[Strasse].valueString = "Fasanenallee"
  * city = "Bern"
  * postalCode = "3013"
  * country = "Schweiz"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#CH
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#CH


Instance: VSDMCoverageGKV-F678901231
InstanceOf: VSDMCoverageGKV
Title: "F678901231 von Fasan, Frank Florian (GKV)"
Description: "Versicherungsdaten F678901231 von Fasan, Frank Florian (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-F678901231
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc7)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[besonderePersonengruppe].valueCoding = #08 "SVA2" // "SVA-Kennzeichnung, pauschal"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2026-09-30"
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#1 "vollständig"
  * extension[dauer].valuePeriod.start = "2025-01-01"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-F678901231
* period
  * start = "1992-12-01"
  * end = "2027-06-30"
* payor[+]
  * reference = $urlVSDMPayorOrganization-107403308
  * identifier[+].value = "107403308"
  * display = "Beispielkostenträger Freiburg"
