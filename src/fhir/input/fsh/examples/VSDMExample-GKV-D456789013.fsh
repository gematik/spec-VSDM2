Instance: VSDMBundle-GKV-D456789013
InstanceOf: VSDMBundle
Title: "D456789013 Dohle, Dara (GKV)"
Description: "VSDM 2.0-Daten D456789013 Dohle, Dara (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-D456789013
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-D456789013
  * resource = VSDMPatient-GKV-D456789013
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-D456789013
  * resource = VSDMCoverageGKV-D456789013
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-105266989
  * resource = VSDMPayorOrganization-105266989


Instance: VSDMPatient-GKV-D456789013
InstanceOf: VSDMPatient
Title: "D456789013 Dohle, Dara (GKV)"
Description: "Versichertendaten D456789013 Dohle, Dara (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-D456789013
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

* identifier[KVNR].value = "D456789013"
* birthDate = "1970-01-20"
* name[Name]
  * text = "Dr. rer. nat. Dara Dohle"
  * family = "Dohle"
    * extension[nachname].valueString = "Dohle"
  * given = "Dara"
  * prefix = "Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#X "unbestimmt"
* address[StrassenAdresse]
  * line[+] = "Dohlenallee 4-6"
    * extension[Hausnummer].valueString = "4-6"
    * extension[Strasse].valueString = "Blumenweg"
  * city = "Darmstadt"
  * postalCode = "64297"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 405060"
    * extension[Postfach].valueString = "Postfach 405060"
  * city = "Darmstadt"
  * postalCode = "64283"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-D456789013
InstanceOf: VSDMCoverageGKV
Title: "D456789013 Dohle, Dara (GKV)"
Description: "Versicherungsdaten D456789013 Dohle, Dara (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-D456789013
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc6)

* extension[WOP].valueCoding = $csWOP#46 "Hessen"
* extension[besonderePersonengruppe].valueCoding = #06 "SER" // "SER (Soziales Entschädigungsrecht)"
* extension[dmp][+]
  * extension[dmp].valueCoding = #05 "Asthma" // "Asthma bronchiale"
  * extension[zeitraum].valuePeriod.start = "2022-01-01"
  * extension[digitalesDMP].valueBoolean = false
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-D456789013
* period
  * start = "2021-10-01"
* payor[+]
  * reference = $urlVSDMPayorOrganization-105266989
  * identifier[+].value = "105266989"
  * display = "Beispielkostenträger Darmstadt"
