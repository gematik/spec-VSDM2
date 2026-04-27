Instance: VSDMBundle-GKV-M345678909
InstanceOf: VSDMBundle
Title: "M345678909 Mittelspecht, Michael-Martin (GKV)"
Description: "VSDM 2.0-Daten M345678909 Mittelspecht, Michael-Martin (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-M345678909
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-M345678909
  * resource = VSDMPatient-GKV-M345678909
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-M345678909
  * resource = VSDMCoverageGKV-M345678909
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-108416806
  * resource = VSDMPayorOrganization-108416806


Instance: VSDMPatient-GKV-M345678909
InstanceOf: VSDMPatient
Title: "M345678909 Mittelspecht, Michael-Martin (GKV)"
Description: "Versichertendaten M345678909 Mittelspecht, Michael-Martin (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-M345678909
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "M345678909"
* birthDate = "2020-04-27"
* name[Name]
  * text = "Michael-Martin Mittelspecht"
  * family = "Mittelspecht"
    * extension[nachname].valueString = "Mittelspecht"
  * given = "Michael-Martin"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Spechtstraße 130"
    * extension[Hausnummer].valueString = "130"
    * extension[Strasse].valueString = "Spechtstraße"
  * line[+] = "c/o Baumklopfer"
    * extension[Adresszusatz].valueString = "c/o Baumklopfer"
  * city = "München"
  * postalCode = "80331"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


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
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-M345678909
* period
  * start = "2020-04-27"
* payor[+]
  * reference = $urlVSDMPayorOrganization-108416806
  * identifier[+].value = "108416806"
  * display = "Beispielkostenträger München-Stadt"
