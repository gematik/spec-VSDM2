Invariant: date-precision-1
Description: "An dieser Stelle muss ein vollständiges Datum bestehend aus Jahr, Monat und Tag angegeben werden."
Severity: #error
Expression: "toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"

Invariant: unsignedInt-percentage-1
Description: "Prozentwerte müssen im Bereich von 0 bis 100 liegen."
Severity: #error
Expression: "($this >= 0) and ($this <= 100)"

Invariant: country-code-iso-or-extension-1
Severity: #error
Description: "Der Ländercode muss entweder als ISO 3166-1-Code in countryCode oder mit der alternativen Erweiterung countryCodeExt angegeben werden."
Expression: "extension.where(url = 'http://hl7.org/fhir/StructureDefinition/iso21090-codedString').exists() != extension.where(url = 'https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMISO3166Ergaenzung').exists()"
