Instance: VSDMBundle-GKV-K123456781
InstanceOf: VSDMBundle
Title: "K123456781 Kiebitz, Karin (GKV)"
Description: "VSDM 2.0-Daten K123456781 Kiebitz, Karin (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-K123456781
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-K123456781
  * resource = VSDMPatient-GKV-K123456781
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-K123456781
  * resource = VSDMCoverageGKV-K123456781
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-105532787
  * resource = VSDMPayorOrganization-105532787
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-106339922
  * resource = VSDMPayorOrganization-106339922


Instance: VSDMPatient-GKV-K123456781
InstanceOf: VSDMPatient
Title: "K123456781 Kiebitz, Karin (GKV)"
Description: "Versichertendaten K123456781 Kiebitz, Karin (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-K123456781
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

* identifier[KVNR].value = "K123456781"
* birthDate = "1933"
* name[Name]
  * text = "Karin Kiebitz"
  * family = "Kiebitz"
    * extension[nachname].valueString = "Kiebitz"
  * given = "Karin"
* gender = #female
* address[PostfachAdresse]
  * line[+] = "Postfach 554433"
    * extension[Postfach].valueString = "Postfach 554433"
  * city = "Luxembourg"
  * postalCode = "1120"
  * country = "Luxemburg"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#LU
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#L


Instance: VSDMCoverageGKV-K123456781
InstanceOf: VSDMCoverageGKV
Title: "K123456781 Kiebitz, Karin (GKV)"
Description: "Versicherungsdaten K123456781 Kiebitz, Karin (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-K123456781
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc6)

* extension[WOP].valueCoding = $csWOP#46 "Hessen"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = false
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#2 "eingeschränkt"
  * extension[dauer].valuePeriod.start = "2024-06-15"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#5 "Rentner"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-K123456781
* period
  * start = "2022-04-01"
  * end = "2027-07-31"
* payor[+]
  * reference = $urlVSDMPayorOrganization-105532787
  * identifier[+].value = "105532787"
  * display = "Beispielkostenträger Kassel"
* payor[+]
  * reference = $urlVSDMPayorOrganization-106339922
  * identifier[+].value = "106339922"
  * display = "Beispielkostenträger Koblenz"
