Mapping: VSDDatensatzFachlichesMappingCoverage
Source: VSDDatensatz
Target: "VSDMCoverage"
Id: VSD-Datensatz-Fachliches-Mapping-Coverage
Title: "Mapping VSD-Datensatz zu Coverage"
Description: "Zuordnung der Versicherungsinformationen des VSD-Datensatzes zum FHIR-Profil VSDMCoverage"

// Die Reihenfolge der Elemente in diesem Mapping folgt der Reihenfolge der Elemente im logischen Modell.

* Versicherungsdaten

  * Kostentraeger -> "VSDMCoverage.payor"
    "Der Haupt-Kostenträger wird als Referenz auf eine VSDMPayorOrganization mit dem Typ \"ins\" (Haupt-Kostenträger) abgebildet."

    * Name -> "VSDMPayorOrganization.name"

    * Kostentraegerlaendercode -> "VSDMPayorOrganization.address.country"
      "Hinweise zur Befüllung der Extensions beachten."

    * Kostentraegerkennung -> "VSDMPayorOrganization.identifier:IKNR"

  * AbrechnenderKostentraeger -> "VSDMCoverage.payor"
    "Der abrechnende Kostenträger wird als Referenz auf eine VSDMPayorOrganization mit dem Typ \"pay\" (abrechnender Kostenträger) abgebildet."
  
    * Name -> "VSDMPayorOrganization.name"

    * Kostentraegerlaendercode -> "VSDMPayorOrganization.address.country"
      "Hinweise zur Befüllung der Extensions beachten."

    * Kostentraegerkennung -> "VSDMPayorOrganization.identifier:IKNR"

  * WOP -> "VSDMCoverage.extension:WOP"
    "Die KBV-Schlüsseltabelle wird durch ein VSDM-spezifisches ValueSet auf die zulässigen Werte eingeschränkt."

  * BesonderePersonengruppe -> "VSDMCoverage.extension:besonderePersonengruppe"
    "Die Schlüsseltabelle wird unverändert abgebildet."

  * Zuzahlungsstatus -> "VSDMCoverage.extension:zuzahlungsstatus"
    "Die gesamte Erweiterung darf nur angegeben werden, wenn eine Zuzahlungsbefreiung vorliegt."

    * Status -> "VSDMCoverage.extension:zuzahlungsstatus.extension:status"
      "Der Wert \"von Zuzahlungspflicht befreit\" wird auf \"true\" abgebildet."

    * GueltigBis -> "VSDMCoverage.extension:zuzahlungsstatus.extension:gueltigBis"
      "Da die Angabe ein Pflichtfeld ist, aber nur erfolgen kann und soll, wenn eine Zuzahlungsbefreiung vorliegt, beeinflusst das die gesamte Struktur."

  * Versicherungsschutz -> "VSDMCoverage.period"
    "Zur Abbildung werden die Standard-Felder der FHIR-Ressource verwendet."
    
    * Beginn -> "VSDMCoverage.period.start"

    * Ende -> "VSDMCoverage.period.end"
      "Da der VSDM 2.0 Resource Server keine Kenntnis von der eingesetzten eGK haben kann, wird immer das Gültigkeitsende des Versicherungsverhältnisses gemeldet, wenn anwendbar."

  * DMP -> "VSDMCoverage.extension:dmp"

    * DMP -> "VSDMCoverage.extension:dmp.extension:dmp"
      "Anstelle des Namens wird der Schlüssel aus der vorgegebenen Wertetabelle angegeben. Zur Einschränkung auf die erlaubten Werte (keine Kombi-Werte) wird ein eigenes ValueSet verwendet."

    * Beginn -> "VSDMCoverage.extension:dmp.extension:zeitraum.value[x].start"

    * Ende -> "VSDMCoverage.extension:dmp.extension:zeitraum.value[x].end"

    * digitalesDMP -> "VSDMCoverage.extension:dmp.extension:digitalesDMP"

  * Kostenerstattung -> "VSDMCoverage.extension:kostenerstattung"

    * AerztlicheVersorgung -> "VSDMCoverage.extension:kostenerstattung.extension:aerztlicheVersorgung"

    * ZahnaerztlicheVersorgung -> "VSDMCoverage.extension:kostenerstattung.extension:zahnaerztlicheVersorgung"

    * StationaererBereich -> "VSDMCoverage.extension:kostenerstattung.extension:stationaererBereich"

    * VeranlassteLeistungen -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:veranlassteLeistungen"

  * RuhenderLeistungsanspruch -> "VSDMCoverage.extension:ruhenderLeistungsanspruch"

    * Beginn -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].start"

    * Ende -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].end"

    * Art -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:art"
    
  * Versichertenart -> "VSDMCoverage.extension:versichertenart"
  