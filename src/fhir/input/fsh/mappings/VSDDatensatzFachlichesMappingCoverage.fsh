Mapping: VSDDatensatzFachlichesMappingCoverage
Source: VSDDatensatz
Target: "VSDMCoverage"
Id: VSD-Datensatz-Fachliches-Mapping-Coverage
Title: "VSD-Datensatz Fachliches Mapping Coverage"
Description: "Mapping des Fachmodells aus GEM_VSDM2_LOG_VSD_Confirmation auf das FHIR-Profil Coverage"

// Metadaten


// Versicherungsinformationen
* Versicherungsdaten
  * Kostentraeger
    * Name -> "VSDMCoverage.payor"
    * Kostentraegerlaendercode -> "VSDMCoverage.extension:vsdm-kostentraegerlaendercode"
    * Kostentraegerkennung -> "VSDMCoverage.payor.identifier"
  * AbrechnenderKostentraeger
    * Name -> "VSDMCoverage.payor"
    * Kostentraegerlaendercode -> "VSDMCoverage.extension:vsdm-kostentraegerlaendercode"
    * Kostentraegerkennung -> "VSDMCoverage.payor.extension:abrechnendeIK"
  * WOP -> "VSDMCoverage.extension:wop"
  * BesonderePersonengruppe -> "VSDMCoverage.extension:besonderePersonengruppe"
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
  