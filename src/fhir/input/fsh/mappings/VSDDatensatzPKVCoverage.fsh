Mapping: VSDDatensatzPKVCoverage
Source: VSDDatensatzPKV
Target: "VSDMCoverage"
Id: VSD-Datensatz-PKV-Coverage
Title: "Mapping VSD-Datensatz PKV zu Coverage"
Description: "Zuordnung der Versicherungsinformationen des VSD-Datensatzes PKV zum FHIR-Profil VSDMCoverage"

// Die Reihenfolge der Elemente in diesem Mapping folgt der Reihenfolge der Elemente im logischen Modell.

* Versicherungsdaten

  * Kostentraeger -> "VSDMCoveragePKV.payor:Hauptkostentraeger" 
    "Der Kostenträger wird als Referenz auf eine VSDMPayorOrganization abgebildet. Im PKV-Bereich gibt es keine Unterscheidung zwischen Haupt- und abrechnendem Kostenträger."
    * Name -> "VSDMPayorOrganization:Hauptkostentraeger.name"
    * Kostentraegerkennung -> "VSDMPayorOrganization:Hauptkostentraeger.identifier:IKNR"

  * Versicherungsschutz -> "VSDMCoveragePKV.period"
    "Zur Abbildung werden die Standard-Felder der FHIR-Ressource verwendet."
    * Beginn -> "VSDMCoveragePKV.period.start"
    * Ende -> "VSDMCoveragePKV.period.end"

  * Beihilfe -> "VSDMCoveragePKV.extension:beihilfe"
    "Die gesamte Zielstruktur ist für Versicherte ohne Beihilfeanspruch nicht anzugeben."
    * Beihilfeanspruch -> "VSDMCoveragePKV.extension:beihilfe.extension:anspruch"
    * QuotePKV -> "VSDMCoveragePKV.extension:beihilfe.extension:quote"

  * Krankenhausleistungen 
    * Allgemein -> "VSDMCoveragePKV.extension:krankenhaus.extension:allgemein"
    * Zweibettzimmer -> "VSDMCoveragePKV.extension:krankenhaus.extension:zweibett"
    * Einbettzimmer -> "VSDMCoveragePKV.extension:krankenhaus.extension:einbett"
    * ZweiEinbettDifferenz -> "VSDMCoveragePKV.extension:krankenhaus.extension:zweibettEinbettDifferenz"
    * Wahlarzt[x] -> "VSDMCoveragePKV.extension:krankenhaus.extension:wahlarzt"
    * Belegarzt[x] -> "VSDMCoveragePKV.extension:krankenhaus.extension:belegarzt"

  * Sozialtarif -> "VSDMCoveragePKV.extension:tarifart"
    "Es wird eine vorhandene Erweiterung verwendet; ein nicht angegebener Sozialtarif wird auf den Wert 01 Individualtarif abgebildet."

  * Versichertenart -> "VSDMCoveragePKV.extension:versichertenart"

  * Hinweis -> "VSDMCoveragePKV.extension:hinweis"
    * Hinweistext -> "VSDMCoveragePKV.extension:hinweis.extension:text"
    * Institutionstypen -> "VSDMCoveragePKV.extension:hinweis.extension:professionOID"
