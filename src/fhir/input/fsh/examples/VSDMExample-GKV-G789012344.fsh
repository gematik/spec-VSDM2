Instance: VSDMBundle-GKV-G789012344
InstanceOf: VSDMBundle
Title: "G789012344 Edle von der Graugans, Gabriele (GKV)"
Description: "VSDM 2.0-Daten G789012344 Edle von der Graugans, Gabriele (GKV)"
Usage: #example

* id = $idVSDMBundle-GKV-G789012344
* meta
  * profile[0] = Canonical(VSDMBundle|1.0.0-rc7)
  * lastUpdated = "2025-07-14T15:16:17.890+01:00"
* type = #collection
* timestamp = "2025-07-14T15:16:17.890+01:00"
* entry[VSDMPatient][+]
  * fullUrl = $urlVSDMPatient-GKV-G789012344
  * resource = VSDMPatient-GKV-G789012344
* entry[VSDMCoverage][+]
  * fullUrl = $urlVSDMCoverageGKV-G789012344
  * resource = VSDMCoverageGKV-G789012344
* entry[VSDMPayorOrganization][+]
  * fullUrl = $urlVSDMPayorOrganization-105413578
  * resource = VSDMPayorOrganization-105413578


Instance: VSDMPatient-GKV-G789012344
InstanceOf: VSDMPatient
Title: "G789012344 Edle von der Graugans, Gabriele (GKV)"
Description: "Versichertendaten G789012344 Edle von der Graugans, Gabriele (GKV)"
Usage: #inline

* id = $idVSDMPatient-GKV-G789012344
* meta.profile[0] = Canonical(VSDMPatient|1.0.0-rc7)

* identifier[KVNR].value = "G789012344"
* birthDate = "1974-02-12"
* name[Name]
  * text = "Gabriele Edle von der Graugans"
  * family = "Edle von der Graugans"
    * extension[namenszusatz].valueString = "Edle"
    * extension[nachname].valueString = "Graugans"
    * extension[vorsatzwort].valueString = "von der"
  * given = "Gabriele"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Am Gänseweiher 66"
    * extension[Hausnummer].valueString = "66"
    * extension[Strasse].valueString = "Am Gänseweiher"
  * city = "Gießen"
  * postalCode = "35392"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D


Instance: VSDMCoverageGKV-G789012344
InstanceOf: VSDMCoverageGKV
Title: "G789012344 Edle von der Graugans, Gabriele (GKV)"
Description: "Versicherungsdaten G789012344 Edle von der Graugans, Gabriele (GKV)"
Usage: #inline

* id = $idVSDMCoverageGKV-G789012344
* meta.profile[0] = Canonical(VSDMCoverageGKV|1.0.0-rc7)

* extension[WOP].valueCoding = $csWOP#46 "Hessen"
* extension[zuzahlungsstatus] 
  * extension[status].valueBoolean = true
  * extension[gueltigBis].valueDate = "2026-12-31"
* extension[kostenerstattung]
  * extension[aerztlicheVersorgung].valueBoolean = true
  * extension[zahnaerztlicheVersorgung].valueBoolean = true
  * extension[stationaererBereich].valueBoolean = true
  * extension[veranlassteLeistungen].valueBoolean = true
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = VSDMRuhenderLeistungsanspruchArtCS#2 "eingeschränkt"
  * extension[dauer].valuePeriod
    * start = "2025-06-01"
    * end = "2027-12-31"
* extension[versichertenart].valueCoding = $csVersichertenartGKV#1 "Mitglieder"
* status = #active
* type = $csVersicherungsart#GKV "gesetzliche Krankenversicherung"
* beneficiary.reference = $urlVSDMPatient-GKV-G789012344
* period
  * start = "1974-02-12"
* payor[+]
  * reference = $urlVSDMPayorOrganization-105413578
  * identifier[+].value = "105413578"
  * display = "Beispielkostenträger Gießen"
