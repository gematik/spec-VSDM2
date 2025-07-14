Instance: VSDMCoverage-J012345677
InstanceOf: VSDMCoverage
Title: "J012345677 Junko, Jens-Jörg"
Description: "Versicherungsdaten J012345677 Junko, Jens-Jörg"
Usage: #example

* extension[WOP].valueCoding = $csWOP#52 "Baden-Württemberg"
* extension[besonderePersonengruppe].valueCoding = #09 "Empfänger von Gesundheitsleistungen nach §§ 4 und 6 des Asylbewerberleistungsgesetzes (AsylbLG)"
* extension[dmp][+]
  * extension[dmp].valueCoding = #06 "COPD"
  * extension[zeitraum].valuePeriod.start =  "2001-01-11"
  * extension[digitalesDMP].valueBoolean = false
* extension[dmp][+]
  * extension[dmp].valueCoding = #09 "Rückenschmerz"
  * extension[zeitraum].valuePeriod.start = "2002-02-12"
  * extension[digitalesDMP].valueBoolean = true
* extension[dmp][+]
  * extension[dmp].valueCoding = #10 "Rheuma"
  * extension[zeitraum].valuePeriod.start = "2003-03-13"
  * extension[digitalesDMP].valueBoolean = false
* extension[ruhenderLeistungsanspruch]
  * extension[art].valueCoding = #1 "vollständig"
  * extension[dauer].valuePeriod
    * start = "2025-01-01"
    * end = "2025-12-31"
* extension[versichertenart].valueCoding = $csVersichertenart#5 "Rentner und ihre Familienangehörigen"
* status = #active
* type = #GKV
* beneficiary.reference = "Patient/VSDMPatient-J012345677"
* period
  * start = "1964-05-01"
* payor[+]
  * reference = "Organization/VSDMPayorOrganization106877150"
  * extension[kostentraegerRolle].valueCoding = #H "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
