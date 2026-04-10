# Releaseprozess FHIR-Anteile

Die folgenden Schritte sind erforderlich, um ein (Pre-)Release des FHIR Package zu erzeugen.
Wichtig: Das ist ein lebendes Dokument - gerne um neue Erkenntnisse und weitere Schritte ergänzen.

Vorbedingungen: 

- Die "geplanten" offenen Issues / Pull Requests sind abgeschlossen.
- Die notwendigen Aktualisierungen der Abhängigkeiten (dependencies) sind erfolgt.
- Das [Changelog](../CHANGELOG-FHIR.md) enthält die Dokumentation der umgesetzten Änderungen.

Checkliste:

- Arbeiten im feature branch ausführen (z.B. `feature/prepare-release-<Version>`)
- In der Datei `CHANGELOG-FHIR.md`:
  - Abschnitt "Nächste Version" duplizieren
  - "obere" Kopie leeren (wird die nächste nächste Version)
  - "untere" Kopie umbenennen, die leeren Abschnitte kennzeichnen und die Überschrift mit Link und Datum versehen (wie bei den Vorgängerversionen)
- In der Datei `src/fhir/input/fsh/ruleset.fsh`:
  - die Versionsangabe in den Metadaten-Rulesets ersetzen (sollte dreimal vorkommen)
  - das Datum in den Metadaten-Rulesets aktualisieren (sollte dreimal vorkommen)
- In der Datei `package.json` die Versionsangabe ersetzen
- In allen Dateien mit der Endung `.fsh` den Text `|<Version-alt>)` ersetzen durch `|<Version-neu>)` (also z.B. `|1.0.0-rc7)` durch `|1.0.0-rc8)`)
- FHIR-Ressourcen aus den FSH-Quellen neu erzeugen (Aufruf von `sushi` - später mal `ig`)
- Validierungsergebnisse prüfen und eventuelle Fehler beheben
- zur Absicherung gesamtes Projekt nach altem Datum und alter Versionsnummer durchsuchen (sollte außer im Changelog keine Treffer mehr ergeben)

TODO: Tagging

TODO: Simplifier-Aktualisierung und Release