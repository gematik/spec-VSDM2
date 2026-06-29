Invariant: date-precision-1
Description: "An dieser Stelle muss ein vollständiges Datum bestehend aus Jahr, Monat und Tag angegeben werden."
Severity: #error
Expression: "toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"

Invariant: unsignedInt-percentage-1
Description: "Prozentwerte müssen im Bereich von 0 bis 100 liegen."
Severity: #error
Expression: "($this >= 0) and ($this <= 100)"

Invariant: country-code-exclusivity-1
Description: "Es muss entweder ein Ländercode aus ISO 3166-1 oder ein Code aus dem erweiterten Wertevorrat verwendet werden."
Severity: #error
Expression: "extension.where(url = 'http://hl7.org/fhir/StructureDefinition/iso21090-codedString').where(value.ofType(Coding).system = 'urn:iso:std:iso:3166').exists() xor extension.where(url = 'http://hl7.org/fhir/StructureDefinition/iso21090-codedString').where(value.ofType(Coding).system = 'https://gematik.de/fhir/vsdm2/CodeSystem/VSDMISO3166ErgaenzungCS').exists()"
