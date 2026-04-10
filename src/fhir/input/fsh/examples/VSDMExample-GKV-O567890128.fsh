Instance: VSDMBundle-GKV-O567890128
InstanceOf: VSDMBundle
Title: "O567890128 Ortolan, Oliver (GKV)"
Description: "VSDM 2.0-Daten O567890128 Ortolan, Oliver (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-O567890128
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc8)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-O567890128
  * resource = VSDMPatient-GKV-O567890128
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-O567890128
  * resource = VSDMCoverageGKV-O567890128
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-107668422
  * resource = VSDMPayorOrganization-107668422


Instance: VSDMPatient-GKV-O567890128
InstanceOf: VSDMPatient
Title: "O567890128 Ortolan, Oliver (GKV)"
Description: "Versichertendaten O567890128 Ortolan, Oliver (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-O567890128
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc8)

* identifier[KVNR].value = "O567890128"
* birthDate = "2009-06-08"
* name[Name]
  * text = "Oliver Ortolan"
  * family = "Ortolan"
    * extension[nachname].valueString = "Ortolan"
  * given = "Oliver"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Gartenammerstraße 15"
    * extension[Hausnummer].valueString = "15"
    * extension[Strasse].valueString = "Gartenammerstraße"
  * line[+] = "Vorderhaus"
    * extension[Adresszusatz].valueString = "Vorderhaus"
  * city = "Offenburg"
  * postalCode = "77654"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-O567890128
InstanceOf: VSDMCoverageGKV
Title: "O567890128 Ortolan, Oliver (GKV)"
Description: "Versicherungsdaten O567890128 Ortolan, Oliver (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-O567890128
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc8)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2027-06-09"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-O567890128
* period
  * start = "2009-06-08"
* payor[+]
  * reference = $urlVSDMPayorOrganization-107668422
  * identifier[+].value = "107668422"
  * display = "Beispielkostenträger Offenburg"
