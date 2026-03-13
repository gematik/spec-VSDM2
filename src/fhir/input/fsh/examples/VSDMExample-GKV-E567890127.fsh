Instance: VSDMBundle-GKV-E567890127
InstanceOf: VSDMBundle
Title: "E567890127 Freifrau an der Elster, Elke (GKV)"
Description: "VSDM 2.0-Daten E567890127 Freifrau an der Elster, Elke (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-E567890127
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc7)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-E567890127
  * resource = VSDMPatient-GKV-E567890127
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-E567890127
  * resource = VSDMCoverageGKV-E567890127
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-105929412
  * resource = VSDMPayorOrganization-105929412
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-104547224
  * resource = VSDMPayorOrganization-104547224


Instance: VSDMPatient-GKV-E567890127
InstanceOf: VSDMPatient
Title: "E567890127 Freifrau an der Elster, Elke (GKV)"
Description: "Versichertendaten E567890127 Freifrau an der Elster, Elke (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-E567890127
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc7)

* identifier[KVNR].value = "E567890127"
* birthDate = "1992-11-13"
* name[Name]
  * text = "Elke Freifrau an der Elster"
  * family = "Freifrau an der Elster"
    * extension[namenszusatz].valueString = "Freifrau"
    * extension[nachname].valueString = "Elster"
    * extension[vorsatzwort].valueString = "an der"
  * given = "Elke"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Elsterstraße 5"
    * extension[Hausnummer].valueString = "5"
    * extension[Strasse].valueString = "Elsterstraße"
  * city = "Erfurt"
  * postalCode = "99095"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 9821"
    * extension[Postfach].valueString = "Postfach 9821"
  * city = "Graz"
  * postalCode = "8055"
  * country = "Österreich"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#AT
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#A


Instance: VSDMCoverageGKV-E567890127
InstanceOf: VSDMCoverageGKV
Title: "E567890127 Freifrau an der Elster, Elke (GKV)"
Description: "Versicherungsdaten E567890127 Freifrau an der Elster, Elke (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-E567890127
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc7)

* extension[WOP].valueCoding = $csWOP#93 "Thüringen"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2026-06-30"
* extension[dmp][+]
  * extension[dmp].valueCoding = #01 "DM2" // "Diabetes mellitus Typ 2"
  * extension[zeitraum].valuePeriod.start = "2001-01-01"
  * extension[digitalesDMP].valueBoolean = false
* extension[dmp][+]
  * extension[dmp].valueCoding = #09 "Rueckenschmerz"
  * extension[zeitraum].valuePeriod
    * start = "2020-01-01"
    * end = "2023-12-31"
  * extension[digitalesDMP].valueBoolean = true
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = false
* extension[versichertenart].valueCoding = $csVersichertenartGKV#1 "Mitglieder"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-E567890127
* period
  * start = "1992-11-13"
  * end = "2026-12-31"
* payor[+]
  * reference = $urlVSDMPayorOrganization-105929412
  * identifier[+].value = "105929412"
  * display = "Beispielkostenträger Erfurt"
* payor[+]
  * reference = $urlVSDMPayorOrganization-104547224
  * identifier[+].value = "104547224"
  * display = "Beispielkostenträger Essen"
