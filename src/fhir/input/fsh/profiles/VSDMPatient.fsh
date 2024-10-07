Profile: VSDMPatient
Parent: EPAPatient
Id: vsdm-patient
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"
* insert Meta
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient" (exactly)
* identifier 1..1

* address only address-de-basis

* name[Name].family.extension[nachname]
  * ^comment = "Gibt den Nachnamen der Person an"

* extension contains VSDMBesonderePersonengruppeEX named vsdmbesonderepersonengruppe 1..1
and VSDMDMPKennzeichenEX named vsdmdmpkennzeichen 1..1
and VSDMGKVWohnortprinzipEX named vsdmgkvwohnortprinzip 1..1
and VSDMKostenerstattungEX named vsdmkostenerstattung 1..1
and VSDMRuhenderLeistungsanspruchEX named vsdmruhenderleistungsanspruch 1..1
and VSDMSelektivvertraegeEX named vsdmselektivvertraege 1..1
and VSDMVersichertenartEX named vsdmversichertenart 1..1
and VSDMZuzahlungsstatusEX named vsdmzuzahlungsstatus 1..1







Instance: VSDMPatientSample
InstanceOf: VSDMPatient
Title: "Patient for VSDM 2"
Usage: #example
* id = "437f2555-2396-4c64-a656-e9553161ca3c"
* meta.profile = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMPatient"

* identifier[KVNR].value = "T024791905"

* name[Name].family = "Königstein"
* name[Name].family.extension[nachname].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[Name].family.extension[nachname].valueString = "Königstein"
* name[Name].given = "Ludger"
* birthDate = "1935-06-22"
* address.type = #both
* address.line = "Blumenweg 14"
* address.line.extension[0][Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=][Hausnummer].valueString = "14"
* address.line.extension[+][Strasse].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=][Strasse].valueString = "Blumenweg"
* address.city = "Esens"
* address.postalCode = "26427"
* address.country = "D"
* telecom = ContactPointAOKMXID

* extension[vsdmbesonderepersonengruppe].valueCoding = VSDMBesonderePersonengruppeCS#3


* extension[vsdmdmpkennzeichen].extension[angabe].valueBoolean = true
* extension[vsdmdmpkennzeichen].extension[teilnahme].valueBoolean = true
* extension[vsdmdmpkennzeichen].extension[kennzeichen].valueCoding = VSDMDMPKennzeichenCS#1
* extension[vsdmdmpkennzeichen].extension[beginn].valueDate = "2024-05-05"
* extension[vsdmdmpkennzeichen].extension[ende].valueDate = "2024-07-05"

* extension[vsdmgkvwohnortprinzip].valueCoding = VSDMGKVWohnortprinzipCS#1

* extension[vsdmversichertenart].valueCoding = VSDMVersichertenartCS#2

* extension[vsdmkostenerstattung].extension[+].url = "aerztlicheVersorgung"
* extension[vsdmkostenerstattung].extension[=].valueBoolean = true
* extension[vsdmkostenerstattung].extension[+].url = "zahnaerztlicheVersorgung"
* extension[vsdmkostenerstattung].extension[=].valueBoolean = false
* extension[vsdmkostenerstattung].extension[+].url = "stationaererBereich"
* extension[vsdmkostenerstattung].extension[=].valueBoolean = false
* extension[vsdmkostenerstattung].extension[+].url = "veranlassteLeistungen"
* extension[vsdmkostenerstattung].extension[=].valueBoolean = false


* extension[vsdmselektivvertraege].extension[+].url = "aerztlich"
* extension[vsdmselektivvertraege].extension[=].valueBoolean = true
* extension[vsdmselektivvertraege].extension[+].url = "zahnaerztlich"
* extension[vsdmselektivvertraege].extension[=].valueBoolean = false



* extension[vsdmruhenderleistungsanspruch].extension[+].url = "vollständig"
* extension[vsdmruhenderleistungsanspruch].extension[=].valueBoolean = true
* extension[vsdmruhenderleistungsanspruch].extension[+].url = "Beginn"
* extension[vsdmruhenderleistungsanspruch].extension[=].valueDate = "2024-01-15"
* extension[vsdmruhenderleistungsanspruch].extension[+].url = "Ende"
* extension[vsdmruhenderleistungsanspruch].extension[=].valueDate = "2024-04-15"

* extension[vsdmzuzahlungsstatus].extension[+].url = "status"
* extension[vsdmzuzahlungsstatus].extension[=].valueBoolean = true
* extension[vsdmzuzahlungsstatus].extension[+].url = "gueltigbis"
* extension[vsdmzuzahlungsstatus].extension[=].valueDate = "2025-12-31"