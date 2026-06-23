# Changelog / Änderungsverzeichnis

In diesem Änderungsverzeichnis werden die Änderungen an den für die Erstellung des FHIR-Profils dokumentiert.

Das Format ist angelehnt an [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Historische Release Notes (vor Beginn dieser Aufzeichnung) wurden zum Teil unbearbeitet oder nur geringfügig umformatiert aus Simplifier übernommen.

## Nächste Version

### Neu

### Änderung

- Im CodeSystem VSDMTDSCodeCS wird für die Codes 79015 und 79016 jetzt ein Wert für das OperationOutcome-Element expression angegeben.
  ([issue 163](https://github.com/gematik/spec-VSDM2/issues/163))
- Die Kennzeichnung der Must Support-Elemente wurde an die Empfehlungen des HL7 Deutschland TC FHIR angepasst.
  ([issue 168](https://github.com/gematik/spec-VSDM2/issues/168))

### Abkündigung

### Entfernung

### Fehlerbehebung

- Überflüssige Leerzeichen am Zeilenende der FSH-Dateien, die sich zum Teil auf die Ressourcen ausgewirkt haben, wurden entfernt.
  ([issue 166](https://github.com/gematik/spec-VSDM2/issues/166))

### Security

## [1.0.1] - 2026-05-20

### Neu

- Ein neuer Fehlercode 79016 / VSDSERVICE_MISSING_PROFILE_VERSION zur Signalisierung eines fehlenden Pflichtparameters wurde aufgenommen.
  ([issue 152](https://github.com/gematik/spec-VSDM2/issues/152))

### Änderung

- Die durch Platzhalter in Meldungstexte eingebetteten Werte wurden durch Hochkommata vom Text getrennt, um die Lesbarkeit zu verbessseren.
  Weiterhin wurde der Text zum Fehlercode VSDSERVICE_MISSING_PATIENT_RECORD_VERSION auf die tatsächliche Fehlersituation angepasst.
  ([issue 154](https://github.com/gematik/spec-VSDM2/issues/154))
- In den Paketinhalten werden jetzt contact und jurisdiction konsistent ausgewiesen.
  ([issue 151](https://github.com/gematik/spec-VSDM2/issues/151))
- Aktualisierung der Paketabhängigkeiten (keine inhaltlichen Auswirkungen)
  - `kbv.all.st` von Version 1.37.0 auf Version 1.41.0 

### Abkündigung

(keine)

### Entfernung

(keine)

### Fehlerbehebung

- In Spezifikationsversion 1.4.0 wurde in A_27012-04 der Fehlercode VSDSERVICE_INVALID_PATIENT_RECORD_VERSION umbenannt in VSDSERVICE_MISSING_PATIENT_RECORD_VERSION. 
  Diese Anpassung fehlte in der Ressourcenversion 1.0.0 und wird mit dieser Version nachgezogen.
  ([issue 142](https://github.com/gematik/spec-VSDM2/issues/142))
- In den ConceptMaps wurden die fehlenden Versionsangaben in den Canonical References nachgetragen.
  ([issue 143](https://github.com/gematik/spec-VSDM2/issues/143))
- Der Beschreibungstext zum Fehlercode VSDSERVICE_INVALID_PROFILE_VERSION wurde korrigiert (Parameter ist verpflichtend anzugeben).
  ([issue 144](https://github.com/gematik/spec-VSDM2/issues/144))
- Die veralteten Namen der ConceptMaps in den Beschreibungstexten (Kommentare) von VSDMOperationOutcome wurden korrigiert.
  ([issue 157](https://github.com/gematik/spec-VSDM2/issues/157))

### Security

(keine)

## [1.0.0] - 2026-04-17

Keine inhaltlichen Änderungen gegenüber Version 1.0.0-rc8.

## [1.0.0-rc8] - 2026-04-10

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

(keine)

### Entfernung

(keine)

### Fehlerbehebung

- In einigen Beispieldateien zu Fehlermeldungen wurden inkonsistente Texte im Element `OperationOutcome.issue.details.text` korrigiert.
  ([issue 122](https://github.com/gematik/spec-VSDM2/issues/122))

### Security

(keine)

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
[1.0.0-rc8]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0-rc8
[1.0.0]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.0
[1.0.1]: https://simplifier.net/packages/de.gematik.vsdm2/1.0.1
