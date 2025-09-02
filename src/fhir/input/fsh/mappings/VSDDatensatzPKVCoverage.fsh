Mapping: VSDDatensatzPKVCoverage
Source: VSDDatensatzPKV
Target: "VSDMCoverage"
Id: VSD-Datensatz-PKV-Coverage
Title: "Mapping VSD-Datensatz PKV zu Coverage"
Description: "Zuordnung der Versicherungsinformationen des VSD-Datensatzes PKV zum FHIR-Profil VSDMCoverage"

// Die Reihenfolge der Elemente in diesem Mapping folgt der Reihenfolge der Elemente im logischen Modell.

* Versicherungsdaten

  * Kostentraeger -> "VSDMCoverage.payor:Hauptkostentraeger" 
    "Der Kostenträger wird als Referenz auf eine VSDMPayorOrganization abgebildet. Im PKV-Bereich gibt es keine Unterscheidung zwischen Haupt- und abrechnendem Kostenträger, weshalb immer ein Hauptkostenträger angegeben wird."
    * Name -> "VSDMPayorOrganization:Hauptkostentraeger.name"
    * Kostentraegerkennung -> "VSDMPayorOrganization:Hauptkostentraeger.identifier:IKNR"

  * Versicherungsschutz -> "VSDMCoverage.period"
    "Zur Abbildung werden die Standard-Felder der FHIR-Ressource verwendet."
    * Beginn -> "VSDMCoverage.period.start"
    * Ende -> "VSDMCoverage.period.end"

  * Beihilfe -> "VSDMCoverage.extension:beihilfe"
    "Die gesamte Zielstruktur ist für Versicherte ohne Beihilfeanspruch nicht anzugeben."
    * Beihilfeanspruch -> "VSDMCoverage.extension:beihilfe.extension:anspruch"
    * QuotePKV -> "VSDMCoverage.extension:beihilfe.extension:quote"

  * Krankenhausleistungen 
    * Allgemein -> "VSDMCoverage.extension:krankenhaus.extension:allgemein"
    * Zweibettzimmer -> "VSDMCoverage.extension:krankenhaus.extension:zweibett"
    * Einbettzimmer -> "VSDMCoverage.extension:krankenhaus.extension:einbett"
    * ZweiEinbettDifferenz -> "VSDMCoverage.extension:krankenhaus.extension:zweibettEinbettDifferenz"
    * Wahlarzt[x] -> "VSDMCoverage.extension:krankenhaus.extension:wahlarzt"
    * Belegarzt[x] -> "VSDMCoverage.extension:krankenhaus.extension:belegarzt"

  * Sozialtarif -> "VSDMCoverage.extension:sozialtarif"

  * Versichertenart -> "VSDMCoverage.extension:versichertenart"

  * Hinweis -> "VSDMCoverage.extension:hinweis"
    * Hinweistext -> "VSDMCoverage.extension:hinweis.extension:text"
    * Institutionstypen -> "VSDMCoverage.extension:hinweis.extension:professionOID"
