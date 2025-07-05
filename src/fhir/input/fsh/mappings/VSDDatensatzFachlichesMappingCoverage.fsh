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
    "Die Schlüsseltabelle wird unverändert abgebildet."

  * BesonderePersonengruppe -> "VSDMCoverage.extension:besonderePersonengruppe"
    "Die Schlüsseltabelle wird unverändert abgebildet."

  * Zuzahlungsstatus -> "VSDMCoverage.extension:zuzahlungsstatus"
    * Status -> "VSDMCoverage.extension:zuzahlungsstatus.extension:status"
    * GueltigBis -> "VSDMCoverage.extension:zuzahlungsstatus.extension:gueltigBis"
  * Versicherungsschutz -> "VSDMCoverage.period"
    * Beginn -> "VSDMCoverage.period.start"
    * Ende -> "VSDMCoverage.period.end"
  * DMP -> "VSDMCoverage.extension:vsdm-dmpKennzeichen"
    * DMP -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:dmpKennzeichen"
    * Beginn -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:dmp-zeitraum.value[x].start"
    * Ende -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:dmp-zeitraum.value[x].end"
    * digitalesDMP -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:digitales-dmp"
  * Kostenerstattung -> "VSDMCoverage.extension:gkv-kostenerstattung"
    * AerztlicheVersorgung -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:aerztlicheVersorgung"
    * ZahnaerztlicheVersorgung -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:zahnaerztlicheVersorgung"
    * StationaererBereich -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:stationaererBereich"
    * VeranlassteLeistungen -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:veranlassteLeistungen"
  * RuhenderLeistungsanspruch -> "VSDMCoverage.extension:ruhenderLeistungsanspruch"
    * Beginn -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].start"
    * Ende -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].end"
    * Art -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:art"
  * Versichertenart -> "VSDMCoverage.extension:versichertenart"
  