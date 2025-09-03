Mapping: VSDDatensatzGKVCoverage
Source: VSDDatensatzGKV
Target: "VSDMCoverageGKV"
Id: VSD-Datensatz-GKV-Coverage
Title: "Mapping VSD-Datensatz GKV zu Coverage"
Description: "Zuordnung der Versicherungsinformationen des VSD-Datensatzes GKV zum FHIR-Profil VSDMCoverageGKV"

// Die Reihenfolge der Elemente in diesem Mapping folgt der Reihenfolge der Elemente im logischen Modell.

* Versicherungsdaten

  * Kostentraeger -> "VSDMCoverageGKV.payor:Hauptkostentraeger"
    "Der Hauptkostenträger wird als Referenz auf eine VSDMPayorOrganization abgebildet. Die Referenz ist mit einer Erweiterung zur Kennzeichnung der Rolle des Kostenträgers versehen."

    * Name -> "VSDMPayorOrganization:Hauptkostentraeger.name"

    * Kostentraegerlaendercode -> "VSDMPayorOrganization:Hauptkostentraeger.address.country"
      "Hinweise zur Befüllung der Extensions beachten. Die Pflicht zur Angabe des Werts für GKV-Patienten wird durch die Invariante VSDMCoverageGKV-address-2 abgebildet."

    * Kostentraegerkennung -> "VSDMPayorOrganization:Hauptkostentraeger.identifier:IKNR"

  * AbrechnenderKostentraeger -> "VSDMCoverageGKV.payor:abrechnenderKostentraeger"
    "Der abrechnende Kostenträger wird als Referenz auf eine VSDMPayorOrganization abgebildet. Die Referenz ist mit einer Erweiterung zur Kennzeichnung der Rolle des Kostenträgers versehen."
  
    * Name -> "VSDMPayorOrganization:abrechnenderKostentraeger.name"

    * Kostentraegerlaendercode -> "VSDMPayorOrganization:abrechnenderKostentraeger.address.country"
      "Hinweise zur Befüllung der Extensions beachten."

    * Kostentraegerkennung -> "VSDMPayorOrganization:abrechnenderKostentraeger.identifier:IKNR"

  * WOP -> "VSDMCoverageGKV.extension:WOP"
    "Die KBV-Schlüsseltabelle wird ggf. durch ein VSDM-spezifisches ValueSet auf die zulässigen Werte eingeschränkt. Die Pflicht zur Angabe des Werts für GKV-Patienten wird durch die Invariante VSDMCoverageGKV-wop-1 abgebildet."

  * BesonderePersonengruppe -> "VSDMCoverageGKV.extension:besonderePersonengruppe"
    "Es werden die zweistelligen Werte aus der Schlüsseltabelle (mit führenden Nullen) verwendet."

  * Zuzahlungsstatus -> "VSDMCoverageGKV.extension:zuzahlungsstatus"
    "Die gesamte Erweiterung darf nur angegeben werden, wenn eine Zuzahlungsbefreiung vorliegt."

    * Status -> "VSDMCoverageGKV.extension:zuzahlungsstatus.extension:status"
      "Der Wert \"von Zuzahlungspflicht befreit\" wird auf \"true\" abgebildet."

    * GueltigBis -> "VSDMCoverageGKV.extension:zuzahlungsstatus.extension:gueltigBis"
      "Da die Angabe ein Pflichtfeld ist, aber nur erfolgen kann und soll, wenn eine Zuzahlungsbefreiung vorliegt, beeinflusst das die gesamte Struktur."

  * Versicherungsschutz -> "VSDMCoverageGKV.period"
    "Zur Abbildung werden die Standard-Felder der FHIR-Ressource verwendet."
    
    * Beginn -> "VSDMCoverageGKV.period.start"
      "Die Pflicht zur Angabe des Werts für GKV-Patienten wird durch die Invariante VSDMCoverageGKV-period-1 abgebildet."

    * Ende -> "VSDMCoverageGKV.period.end"
      "Da der VSDM 2.0 Resource Server keine Kenntnis von der eingesetzten eGK haben kann, wird immer das Gültigkeitsende des Versicherungsverhältnisses gemeldet, wenn anwendbar."

  * DMP -> "VSDMCoverageGKV.extension:dmp"

    * DMP -> "VSDMCoverageGKV.extension:dmp.extension:dmp"
      "Anstelle des Namens wird der Schlüssel aus der vorgegebenen Wertetabelle, ergänzt um führende Nullen, angegeben. Zur Einschränkung auf die erlaubten Werte (keine Kombi-Werte) wird ein eigenes ValueSet verwendet."

    * Beginn -> "VSDMCoverageGKV.extension:dmp.extension:zeitraum.value[x].start"

    * Ende -> "VSDMCoverageGKV.extension:dmp.extension:zeitraum.value[x].end"

    * digitalesDMP -> "VSDMCoverageGKV.extension:dmp.extension:digitalesDMP"

  * Kostenerstattung -> "VSDMCoverageGKV.extension:kostenerstattung"

    * AerztlicheVersorgung -> "VSDMCoverageGKV.extension:kostenerstattung.extension:aerztlicheVersorgung"

    * ZahnaerztlicheVersorgung -> "VSDMCoverageGKV.extension:kostenerstattung.extension:zahnaerztlicheVersorgung"

    * StationaererBereich -> "VSDMCoverageGKV.extension:kostenerstattung.extension:stationaererBereich"

    * VeranlassteLeistungen -> "VSDMCoverageGKV.extension:gkv-kostenerstattung.extension:veranlassteLeistungen"

  * RuhenderLeistungsanspruch -> "VSDMCoverageGKV.extension:ruhenderLeistungsanspruch"

    * Beginn -> "VSDMCoverageGKV.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].start"

    * Ende -> "VSDMCoverageGKV.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].end"

    * Art -> "VSDMCoverageGKV.extension:ruhenderLeistungsanspruch.extension:art"
    
  * Versichertenart -> "VSDMCoverageGKV.extension:versichertenart"
  