# Changelog / Änderungsverzeichnis

In diesem Änderungsverzeichnis werden die Änderungen an den für die Erstellung des FHIR-Profils dokumentiert.

Das Format ist angelehnt an [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Historische Release Notes (vor Beginn dieser Aufzeichnung) wurden zum Teil unbearbeitet oder nur geringfügig umformatiert aus Simplifier übernommen.

## Nächste Version

### Neu

- Eine neue Fehlermeldung mit dem TDS-Code 79015 und dem Fehlercode `VSDSERVICE_INVALID_PROFILE_VERSION` zur Signalisierung einer ungültigen Versionsangabe im Request wurde eingefügt.
  Dazu wurden die CodeSystems `VSDMTDSCodeCS` und `VSDMErrorcodeCS` sowie die zugehörigen ConceptMaps angepasst.
  ([issue 125](https://github.com/gematik/spec-VSDM2/issues/125))
- Für die Elemente `VSDMCoverageGKV.period.start/end` und `VSDMCoverageGKV.extension:ruhenderLeistungsanspruch.extension:dauer.value[x].start/end` wird jetzt durch eine Invariante die Verwendung unvollständiger Datumsangaben wie JJJJ oder JJJJ-MM verhindert.
  ([issue 126](https://github.com/gematik/spec-VSDM2/issues/126))
- Für GKV-Versicherte wird die Angabe des Werts `unknown` für des Elements `VSDMPPatient.gender` durch eine Invariante verhindert.
  ([issue 127](https://github.com/gematik/spec-VSDM2/issues/127))

### Änderung

- Die Must Support-Kennzeichnung einer Reihe von Elementen wurde angepasst.
  In diesem Zusammenhang wurden Beispieldaten für GKV-Kostenträger um nicht zu unterstützende Elemente bereinigt.
  ([issue 128](https://github.com/gematik/spec-VSDM2/issues/128))
- Die Platzhalter in den Fehlermeldungen wurden mit einheitlichen Trennern (Unterstrich) versehen. 
  Dazu wurde `[media type]` durch `[media_type]` und `[http-operation]` durch `[http_operation]` ersetzt.
  ([issue 129](https://github.com/gematik/spec-VSDM2/issues/129))
- Aktualisierung der Paketabhängigkeiten 
  ([issue 137](https://github.com/gematik/spec-VSDM2/issues/137))
  - `de.gematik.terminology` von Version 1.0.8 auf Version 1.0.9 
  - `de.gematik.ti` von Version 1.2.0 auf Version 1.3.1 
  - `kbv.all.st` von Version 1.34.0 auf Version 1.37.0 
  - `kbv.ita.for` von Version 1.3.0 auf Version 1.3.1

### Abkündigung

### Entfernung

### Fehlerbehebung

- In einigen Beispieldateien zu Fehlermeldungen wurden inkonsistente Texte im Element `OperationOutcome.issue.details.text` korrigiert.
  ([issue 122](https://github.com/gematik/spec-VSDM2/issues/122))

### Security

## [1.0.0-rc7] - 2026-03-13

- Die Kennzeichnung von Haupt- und abrechnendem Kostenträger wurde zur Verbesserung der Kompatibilität mit anderen Spezifikation (z.B. ISIK) umgestellt.
  ([issue #112](https://github.com/gematik/spec-VSDM2/issues/112]))
- Im VSDM 2.0 sollen generell zu allen kodierten Werten Anzeigetexte mitgeliefert werden. 
  Die Profilierung von `VSDMCoverageGKV/PKV.type` wurde von `fixedValue` auf `pattern` umgestellt, um das zu ermöglichen.
  ([issue #116](https://github.com/gematik/spec-VSDM2/issues/116))
- In der ConceptMap `VSDMDEUEVAnlage8ISO3166` wurde eine fehlende Zuordnung des Ländercodes AU (Ashmore- und Cartierinseln) ergänzt.
  ([issue #102](https://github.com/gematik/spec-VSDM2/issues/102))
- In den Beispielen für `VSDMOperationOutcome` wurden die Profilangaben um eine Versionsangabe ergänzt.
  ([issue #104](https://github.com/gematik/spec-VSDM2/issues/104))
- Das Beispiel für `VSDMOperationOutcome-InvalidHeader` wurde auf die aktuelle Spezifikationslage angepasst.
  ([issue #106](https://github.com/gematik/spec-VSDM2/issues/106))
- Das abgekündigte Element `OperationOutcome.issue.location` in den Beispielen (zur Kodierung von Feldangaben) wurde durch das Nachfolge-Element `OperationOutcome.issue.expression` ersetzt .
  ([issue #108](https://github.com/gematik/spec-VSDM2/issues/108))

_(Release Notes aus der Simplifier-Veröffentlichung übernommen)_

## [1.0.0-rc6] - 2026-01-30

Release Candidate 6 (rc6) beinhaltet inhaltliche Ergänzungen und Korrekturen der FHIR-Artefakte für VSDM 2. 
Der Fokus liegt auf Vervollständigung der Terminologien, Harmonisierung der Canonicals sowie redaktionellen und technischen Anpassungen der Profile.
Hinzufügen bzw. Aktualisierung mehrerer ConceptMaps und CodeSystem-Mappings für VSDM-TDS (z. B. ErrorCode und IssueSeverity). 
Erweiterung der ValueSets und Mapping-Artefakte für TDS-Fehlermeldungen und Statuscodes.

_(Release Notes aus der Simplifier-Veröffentlichung übernommen)_

## [1.0.0-rc5] - 2025-09-17

Integration PKV

_(Release Notes aus der Simplifier-Veröffentlichung übernommen)_

## [1.0.0-rc4] - 2025-01-23

Initiales Release VSDM 2.0

_(Release Notes aus der Simplifier-Veröffentlichung übernommen)_

## [1.0.0-rc3] - 2024-11-14

Update ErrorCodes

_(Release Notes aus der Simplifier-Veröffentlichung übernommen)_

## [1.0.0-rc2] - 2024-11-14

Anpassung der ErrorCodes OperationOutcome

_(Release Notes aus der Simplifier-Veröffentlichung übernommen)_

## [1.0.0-rc1] - 2024-10-25

Vorabveröffentlichung VSDM 2.0

_(Release Notes aus der Simplifier-Veröffentlichung übernommen)_

[1.0.0-rc1]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc1
[1.0.0-rc2]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc2
[1.0.0-rc3]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc3
[1.0.0-rc4]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc4
[1.0.0-rc5]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc5
[1.0.0-rc6]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc6
[1.0.0-rc7]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc7
