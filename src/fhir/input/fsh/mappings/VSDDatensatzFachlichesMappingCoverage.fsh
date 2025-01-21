Mapping: VSDDatensatzFachlichesMappingCoverage
Source: GEM_VSDM2_LOG_VSD_Confirmation
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
  * WIPBesonderePersonengruppe -> "VSDMCoverage.extension:besonderePersonengruppe"
  * WIPZuzahlungsstatus -> "VSDMCoverage.extension:zuzahlungsstatus"
    * WIPKostentraegerAngabestatus -> "VSDMCoverage.extension:vsdm-kostentragerAngabestatus"
    * Status -> "VSDMCoverage.extension:zuzahlungsstatus.extension:status"
    * GueltigBis -> "VSDMCoverage.extension:zuzahlungsstatus.extension:gueltigBis"
  * Versicherungsschutz -> "VSDMCoverage.period"
    * Beginn -> "VSDMCoverage.period.start"
    * WIPEnde -> "VSDMCoverage.period.end"
  * WIPDMP -> "VSDMCoverage.extension:vsdm-dmpKennzeichen"
    * WIPKostentraegerAngabestatus -> "VSDMCoverage.extension:vsdm-kostentragerAngabestatus"
    * DMP -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:dmpKennzeichen"
    * Beginn -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:dmp-zeitraum.value[x].start"
    * Ende -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:dmp-zeitraum.value[x].end"
  * WIPdigitalesDMP -> "VSDMCoverage.extension:vsdm-dmpKennzeichen.extension:digitales-dmp"
  * WIPKostenerstattung -> "VSDMCoverage.extension:gkv-kostenerstattung"
    * WIPKostentraegerAngabestatus -> "VSDMCoverage.extension:vsdm-kostentragerAngabestatus"
    * AerztlicheVersorgung -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:aerztlicheVersorgung"
    * ZahnaerztlicheVersorgung -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:zahnaerztlicheVersorgung"
    * StationaererBereich -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:stationaererBereich"
    * VeranlassteLeistungen -> "VSDMCoverage.extension:gkv-kostenerstattung.extension:veranlassteLeistungen"
  * WIPRuhenderLeistungsanspruch -> "VSDMCoverage.extension:ruhenderLeistungsanspruch"
    * WIPKostentraegerAngabestatus -> "VSDMCoverage.extension:vsdm-kostentragerAngabestatus"
    * Beginn -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].start"
    * Ende -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].end"
    * ArtDesRuhens -> "VSDMCoverage.extension:ruhenderLeistungsanspruch.extension:art"
  * Versichertenart -> "VSDMCoverage.extension:versichertenart"
  * Versicherungsart -> "VSDMCoverage.type"