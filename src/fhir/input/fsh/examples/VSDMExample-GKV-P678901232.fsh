Instance: VSDMBundle-GKV-P678901232
InstanceOf: VSDMBundle
Title: "P678901232 Pinguin, Paula (GKV)"
Description: "VSDM 2.0-Daten P678901232 Pinguin, Paula (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-P678901232
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.1-dev)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-P678901232
  * resource = VSDMPatient-GKV-P678901232
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-P678901232
  * resource = VSDMCoverageGKV-P678901232
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-107668422
  * resource = VSDMPayorOrganization-107668422


Instance: VSDMPatient-GKV-P678901232
InstanceOf: VSDMPatient
Title: "P678901232 Pinguin, Paula (GKV)"
Description: "Versichertendaten P678901232 Pinguin, Paula (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-P678901232
* meta.profile[0] = Canonical(VSDMPatient|1.0.1-dev)

* identifier[KVNR].value = "P678901232"
* birthDate = "2009-06-08"
* name[Name]
  * text = "Paula Pinguin"
  * family = "Pinguin"
    * extension[nachname].valueString = "Pinguin"
  * given = "Paula"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Rruga e UQK-se N:62"
    * extension[Hausnummer].valueString = "62"
    * extension[Strasse].valueString = "Rruga e UQK-se"
  * city = "Prishtina"
  * postalCode = "10000"
  * country = "Kosovo"
    * extension[countryCode].valueCoding = VSDMISO3166ErgaenzungCS#XK
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#KOS


Instance: VSDMCoverageGKV-P678901232
InstanceOf: VSDMCoverageGKV
Title: "P678901232 Pinguin, Paula (GKV)"
Description: "Versicherungsdaten P678901232 Pinguin, Paula (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-P678901232
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.1-dev)

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2027-06-09"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#3 "Familienangehoerige"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-P678901232
* period
  * start = "2009-06-08"
* payor[+]
  * reference = $urlVSDMPayorOrganization-107668422
  * identifier[+].value = "107668422"
  * display = "Beispielkostenträger Offenburg"
