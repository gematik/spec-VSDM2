Instance: VSDMBundle-GKV-A123456780
InstanceOf: VSDMBundle
Title: "A123456780 Amsel, Andrea (GKV)"
Description: "VSDM 2.0-Daten A123456780 Amsel, Andrea (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-A123456780
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc6)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-A123456780
  * resource = VSDMPatient-GKV-A123456780
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-A123456780
  * resource = VSDMCoverageGKV-A123456780
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-104178397
  * resource = VSDMPayorOrganization-104178397


Instance: VSDMPatient-GKV-A123456780
InstanceOf: VSDMPatient
Title: "A123456780 Amsel, Andrea (GKV)"
Description: "Versichertendaten A123456780 Amsel, Andrea (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-A123456780
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc6)

* identifier[KVNR].value = "A123456780"
* birthDate = "1997-12-28"
* name[Name]
  * text = "Andrea Amsel"
  * family = "Amsel"
    * extension[nachname].valueString = "Amsel"
  * given = "Andrea"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Amselweg 1"
    * extension[Hausnummer].valueString = "1"
    * extension[Strasse].valueString = "Amselweg"
  * city = "Aachen"
  * postalCode = "52070"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-A123456780
InstanceOf: VSDMCoverageGKV
Title: "A123456780 Amsel, Andrea (GKV)"
Description: "Versicherungsdaten A123456780 Amsel, Andrea (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-A123456780
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc6)

* extension[WOP].valueCoding = $csWOP#38 "Nordrhein"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#1 "Mitglieder"
* status = #active
* type = $csVersicherungsart#GKV
* beneficiary.reference = $urlVSDMPatient-GKV-A123456780
* period
  * start = "1997-12-28"
* payor[+]
  * reference = $urlVSDMPayorOrganization-104178397
  * identifier[+].value = "104178397"
  * display = "Beispielkostenträger Aachen"
