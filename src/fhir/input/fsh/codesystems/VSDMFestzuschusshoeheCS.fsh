CodeSystem: VSDMFestzuschusshoeheCS
Id: vsdm-festzuschusshoehe-cs
Title: "CodeSystem for Festzuschusshoehe"
Description: "Festzuschusshöhe gibt die Höhe des von der GKV gewährten Festzuschusses bei Versorgungen mit Zahnersatz an. Die Zuschusshöhe richtet sich nach der Anzahl an Jahren mit durchgehend durchgeführter Vorsorge oder Prophylaxe"
* ^url = "https://gematik.de/fhir/vsdm2/CodeSystem/VSDMFestzuschusshoeheCS"
* insert Meta
* ^caseSensitive = true
* ^content = #complete
// refer to EBZ-Verfahren
// https://www.gkv-datenaustausch.de/media/dokumente/leistungserbringer_1/zahnaerzte/elektronische_beantragungs__und_genehmigungsverfahren/technische_anlagen_aktuell_5/20240418_TA_EBZ_v2.0_oA.pdf
// section 6.38 "Zuschusshöhe (ZER)"
* #0 "60 % / unbekannt"
* #1 "70 % / fünf Jahre durchgehend"
* #2 "75 % / zehn Jahre durchgehend"
* #3 "100 % / Härtefall"
