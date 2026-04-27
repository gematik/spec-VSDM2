# Erläuterung Validator-Meldungen

Bei der Validierung der Struktur- und Beispielressourcen dieses Projekts werden eine ganze Reihe von Meldungen ausgegeben.
Dieses Dokument erläutert den Hintergrund der jeweiligen Meldung und begründet, warum bestimmte Meldungen aktuell nicht behoben und/oder ignoriert werden können.
In den zitierten Meldungstexten werden Pfade und Positionen zum Teil gekürzt, um Meldungen zusammenzufassen.
Die Meldungen stammen aus dem HAPI Validator [Release 6.7.11](https://github.com/hapifhir/org.hl7.fhir.core/releases/tag/6.7.11).

## Meldungen zu den Struktur-Ressourcen

### Warning: A resource should have narrative for robust management

Wortlaut der Meldung:
```
StructureDefinition: Warning - Constraint failed: dom-6: 'A resource should have narrative for robust management' (defined in http://hl7.org/fhir/StructureDefinition/DomainResource) (Best Practice Recommendation) {http://hl7.org/fhir/StructureDefinition/DomainResource#dom-6}
```

Auf die Generierung von *narrative content* für die Struktur-Ressourcen wird bewusst verzichtet, da sie durch die enthaltenen Struktur-Elemente des FHIR-Standards bereits beschrieben werden.

### Warning: Element names should be simple alphanumerics with a max of 64 characters...

Betrifft nur die Dateien `StructureDefinition-VSDDatensatzGKV.json` und `StructureDefinition-VSDDatensatzPKV.json`. Wortlaut der Meldung:
```
StructureDefinition.differential.element[*]: Warning - Constraint failed: eld-20: 'Element names should be simple alphanumerics with a max of 64 characters, or code generation tools may be broken' {http://hl7.org/fhir/StructureDefinition/ElementDefinition#eld-20}
```

Bei diesen Dateien handelt es sich um Repräsentationen des logischen Modells, die für die praktische Nutzung und insbesondere die Code-Generierung keine Rolle spielen.

### Information: The discriminator type 'pattern' is deprecated in R5+

Wortlaut der Meldung:
```
StructureDefinition.differential.element[*].slicing.discriminator[0]: Information - The discriminator type 'pattern' is deprecated in R5+. For future compatibility, you could consider using type=value with a pattern[x] instead (if this is not an inherited slicing) {SD_PATH_SLICING_DEPRECATED}
```

Zur Bearbeitung dieser Warnung ist bereits [Issue 97](https://github.com/gematik/spec-VSDM2/issues/97) eingeplant.

### Warning: The code '...' is not a valid code in this code system

Betrifft nur die Datei `CodeSystem-VSDMTDSCodeCS.json`. Wortlaut der Meldungen:
```
CodeSystem.concept[0].property[0]: Warning - The code 'client' is not a valid code in this code system {CODESYSTEM_PROPERTY_BAD_INTERNAL_REFERENCE}
CodeSystem.concept[9].property[0]: Warning - The code 'proxy' is not a valid code in this code system {CODESYSTEM_PROPERTY_BAD_INTERNAL_REFERENCE}
```

Da die hier betroffene Property nur zur lokalen Dokumentation verwendet wird, wurde kein eigenes CodeSystem eingerichtet. 
Das scheint in der Folge diese Fehlermeldung des Validators auszulösen (siehe auch Info-Meldung `CODESYSTEM_PROPERTY_CODE_DEFAULT_WARNING` weiter unten).

### Warning: Target Code System urn:iso:std:iso:3166 doesn't have all content (content = not-present)...

Betrifft nur die Datei `ConceptMap-VSDMDEUEVAnlage8ISO3166.json`. Wortlaut der Meldung:
```
ConceptMap.group[0].target: Warning - Target Code System urn:iso:std:iso:3166 doesn't have all content (content = not-present), so the target codes cannot be checked {CONCEPTMAP_GROUP_TARGET_INCOMPLETE}
```

Diese Meldung warnt lediglich vor einer Lücke in der Abdeckung durch den Validator.

### Warning: No Target Code System, so the target codes cannot be checked

Betrifft nur die Datei `ConceptMap-VSDMTDSCodeHTTPStatus.json`. Wortlaut der Meldung:
```
ConceptMap.group[0]: Warning - No Target Code System, so the target codes cannot be checked {CONCEPTMAP_GROUP_TARGET_MISSING}
```

Für das Zielsystem (HTTP Status Codes) gibt es kein kanonisches CodeSysteme, aus dem die Codes bezogen werden könnten.
Damit ist auch keine Validierung möglich.

### Information: The type of property 'code' is 'code', but no ValueSet information was found...

Betrifft nur die Datei `CodeSystem-VSDMTDSCodeCS.json`. Wortlaut der Meldungen:
```
CodeSystem.property[0]: Information - The type of property 'code' is 'code', but no ValueSet information was found, so the codes will be validated as internal codes {CODESYSTEM_PROPERTY_CODE_DEFAULT_WARNING}
```

Da die hier betroffene Property nur zur lokalen Dokumentation verwendet wird, wurde kein eigenes CodeSystem eingerichtet. 

## Meldungen zu den Beispiel-Ressourcen

### Information: The value provided (...) was not found in the value set 'Iso 3166 Part 1: 2 Letter Codes'...

Wortlaut der Meldung:
```
Bundle.entry[*].resource/.../.address[0].country: Information - The value provided ('LAND') was not found in the value set 'Iso 3166 Part 1: 2 Letter Codes' (http://hl7.org/fhir/ValueSet/iso3166-1-2|4.0.1), and a code is recommended to come from this value set (error message = The System URI could not be determined for the code 'LAND' in the ValueSet 'http://hl7.org/fhir/ValueSet/iso3166-1-2|4.0.1'; The provided code '#LAND' was not found in the value set 'http://hl7.org/fhir/ValueSet/iso3166-1-2|4.0.1') {Terminology_TX_NoValid_18}
```
für `LAND` = Deutschland, Schweiz, Österreich, Luxemburg, Kosovo

In der hier verwendeten Version der Basisprofile existiert noch eine Festlegung der Kodierung der Landesangabe nach ISO 3166-1.
Diese Festlegung [wurde im Basisprofil in der Zwischenzeit geändert](https://github.com/hl7germany/basisprofil-de-r4/pull/665) und [dokumentiert (Abschnitt "Staat (Land)")](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient-Addresse?version=current).
Diese Änderung wird allerdings erst in Version 1.6.0 der Basisprofile zur Verfügung stehen.

### Information: The value provided ('Graf') was not found in the value set 'Namenszusatz'...

Wortlaut der Meldung:
```
Bundle.entry[0].resource/*Patient/...*/.name[0].family.extension[0].value.ofType(string): Information - The value provided ('Graf') was not found in the value set 'Namenszusatz' (https://gematik.de/fhir/vsdm2/ValueSet/VSDMNamenszusatzVS|1.0.0), and a code is recommended to come from this value set (error message = The System URI could not be determined for the code 'Graf' in the ValueSet 'https://gematik.de/fhir/vsdm2/ValueSet/VSDMNamenszusatzVS|1.0.0'; The provided code '#Graf' was not found in the value set 'https://gematik.de/fhir/vsdm2/ValueSet/VSDMNamenszusatzVS|1.0.0') {Terminology_TX_NoValid_18}
```

Im zugrundeliegenden CodeSystem ist ein [Übertragungsfehler](https://github.com/hl7germany/basisprofil-de-r4/issues/649) aufgetreten.
Der Fehler wurde mittlerweile behoben.
Diese Änderung wird allerdings erst in Version 1.6.0 der Basisprofile zur Verfügung stehen.

### Information: Binding for path ... in profile StructureDefinition[http://hl7.org/fhir/StructureDefinition/iso21090-codedString|...] has no source, so can't be checked

Wortlaut der Meldung:
```
Bundle.entry[*].resource/*...*/.address[*].country.extension[*].value.ofType(Coding): Information - Binding for path Bundle.entry[*].resource/*...*/.address[*].country.extension[*].value.ofType(Coding) in profile StructureDefinition[http://hl7.org/fhir/StructureDefinition/iso21090-codedString|...] has no source, so can't be checked {Terminology_TX_Binding_NoSource}
```

Die Herkunft dieser Meldung wird derzeit noch untersucht.

### Information: None of the codings provided are in the value set 'Coverage Type and Self-Pay Codes'

Wortlaut der Meldungen:
```
Bundle.entry[*].resource/*Coverage/...*/.type: Information - None of the codings provided are in the value set 'Coverage Type and Self-Pay Codes' (http://hl7.org/fhir/ValueSet/coverage-type|4.0.1), and a coding is recommended to come from this value set (codes = http://fhir.de/CodeSystem/versicherungsart-de-basis#GKV) {Terminology_TX_NoValid_3_CC}
Bundle.entry[*].resource/*Coverage/...*/.type: Information - None of the codings provided are in the value set 'Coverage Type and Self-Pay Codes' (http://hl7.org/fhir/ValueSet/coverage-type|4.0.1), and a coding is recommended to come from this value set (codes = http://fhir.de/CodeSystem/versicherungsart-de-basis#PKV) {Terminology_TX_NoValid_3_CC}
```

Die Herkunft dieser Meldung wird derzeit noch untersucht.

### Information: This element does not match any known slice defined in the profile https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKrankenhausleistungenPKV|1.0.0

Wortlaut der Meldungen:
```
[157, 38] Bundle.entry[1].resource/*Coverage/...*/.extension[2].extension[*].value.ofType(boolean): Information - This element does not match any known slice defined in the profile https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKrankenhausleistungenPKV|1.0.0 (this may not be a problem, but you should check that it's not intended to match a slice) {Details_for__matching_against_Profile_}
``` 

Die Herkunft dieser Meldung wird derzeit noch untersucht.
