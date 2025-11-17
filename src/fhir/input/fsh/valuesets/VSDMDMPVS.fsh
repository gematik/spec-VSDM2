ValueSet: VSDMDMPVS
Title: "Disease-Management-Programm (DMP)"
Description: "Disease-Management-Programm im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta
* ^purpose = """
    Das CodeSystem der Disease-Management-Programme enthält alle auf der eGK hinterlegbaren Werte.
    Dazu gehören auch Kombinationswerte, z.B. 33 für COPD und KHK, sowie ein Nullwert.
    Diese Kombinationswerte sind zur Ablage auf der eGK erforderlich (eng beschränkter Speicherbereich).
    Für VSDM 2.0 sind diese Sonderwerte allerdings nicht mehr sinnvoll:
    Die Disease-Management-Programme werden als wiederholbare Struktur mit separaten Gültigkeitsbereichen und weiteren Attributen ausgeführt.
    Ein Nullwert wird ebenfalls nicht mehr benötigt.
    Dieses ValueSet nimmt daher eine Einschränkung des KBV-CodeSystem auf im VSDM 2.0 gültige Werte vor.
    Da einige Abkürzungen aus dem CodeSystem nicht unbedingt allgemeinverständlich sind, ergänzt das ValueSet die Konzepte um einen Beschreibungstext.
  """

// Perspektivisch wäre es sinnvoll, wenn dieses ValueSet von der KBV (die auch das CodeSystem verantwortet) gepflegt gepflegt würde.
// Dies ist (Stand 04.09.2025) nach KBV-interner Prüfung möglich, allerdings ist aus internen Gründen keine schnelle Entscheidung zu erwarten. 
// Es ist für VSDM 2.0 unkritisch, mit einem eigenen ValueSet zu starten. 
// Ein späterer Austausch des ValueSets wäre KEIN breaking change.

// Wert 00 = "nicht gesetzt" (ehemaliger Dummy-Leerwert für eGK) für VSDM 2 nicht sinnvoll
* include $csDMP#01 "DM2"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Diabetes mellitus Typ 2"

* include $csDMP#02 "BRK"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Brustkrebs"

* include $csDMP#03 "KHK"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Koronare Herzkrankheit"

* include $csDMP#04 "DM1"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Diabetes mellitus Typ 1"

* include $csDMP#05 "Asthma"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Asthma bronchiale"

* include $csDMP#06 "COPD"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "COPD (chronic obstructive pulmonary disease)"

* include $csDMP#07 "HI"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Chronische Herzinsuffizienz"

* include $csDMP#08 "Depression"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Depression"

* include $csDMP#09 "Rueckenschmerz"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Rückenschmerz"

* include $csDMP#10 "Rheuma"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Rheuma"

* include $csDMP#11 "Osteoporose"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Osteoporose"

* include $csDMP#12 "Adipositas"
  * ^designation[0].use = $csSCT#900000000000003001 "Fully specified name"
  * ^designation[0].value = "Adipositas - Erwachsene"

// Kombiwerte ab Code 30 nicht zulässig, siehe Beschreibung des ValueSystems
