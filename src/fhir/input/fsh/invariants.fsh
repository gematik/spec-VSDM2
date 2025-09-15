Invariant: date-precision-1
Description: "An dieser Stelle muss ein vollständiges Datum bestehend aus Jahr, Monat und Tag angegeben werden."
Severity: #error
Expression: "toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"

Invariant: unsignedInt-percentage-1
Description: "Prozentwerte müssen im Bereich von 0 bis 100 liegen."
Severity: #error
Expression: "($this >= 0) and ($this <= 100)"

