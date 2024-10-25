Extension: VSDMRuhenderLeistungsanspruchEX
Id: vsdm-ruhenderleistungsanspruch-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMRuhenderLeistungsanspruchEX"
* insert Meta
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "Gibt Art und Dauer des ruhenden Leistungsanspruchs des Versicherten bei dem unter Kostenträger angegebenen Kostenträger an"
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMRuhenderLeistungsanspruchEX" (exactly)

* extension contains 
    $ruhender-leistungsanspruch named ruhenderLeistungsanspruch 1..1 and
    kostentraeger-angabestatus 1..1 MS


/*
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    art 1..1 and
    dauer 1..1
* extension[art] ^short = "Gibt die Art des ruhenden Leistungsanspruchs an."
* extension[art] ^definition = "Gibt die Art des ruhenden Leistungsanspruchs an."
* extension[art].value[x] only Coding
* extension[art].value[x].code 1..
* extension[art].value[x].code obeys ruhend-1
* extension[dauer].value[x] only Period
* extension[dauer].value[x].start 1..
* extension[dauer].value[x].start ^short = "Beginn des ruhenden Leistungsanspruchs"
* extension[dauer].value[x].start ^definition = "Gibt den Beginn des ruhenden Leistungsanspruchs des Versicherten bei dem\r\nunter Klasse Kostenträger angegebenen Kostenträger an."
* extension[dauer].value[x].end ^short = "Ende des ruhenden Leistungsanspruchs"
* extension[dauer].value[x].end ^definition = "Gibt das Ende des ruhenden Leistungsanspruchs des Versicherten bei dem\r\nunter Klasse Kostenträger angegebenen Kostenträger an."
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMRuhenderLeistungsanspruchEX" (exactly)

Invariant: ruhend-1
Description: "Es sind nur die Werte \"1\" (vollständig) und \"2\" (eingeschränkt) erlaubt."
* severity = #warning
* expression = "matches('[12]')"

*/