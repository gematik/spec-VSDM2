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
  """

// Perspektivisch wäre es sinnvoll, wenn dieses ValueSet von der KBV (die auch das CodeSystem verantwortet) gepflegt gepflegt würde.
// Abstimmung Maximilian Reith 04.09.2025: Prüfung KBV-intern, allerdings aus internen Gründen keine schnelle Entscheidung zu erwarten. 
// Es ist für VSDM 2.0 unkritisch, mit einem eigenen ValueSet zu starten. 
// Ein späterer Austausch des ValueSets wäre KEIN breaking change.

* include $csDMP#01 "Diabetes mellitus Typ 2"
* include $csDMP#02 "Brustkrebs"
* include $csDMP#03 "Koronare Herzkrankheit"
* include $csDMP#04 "Diabetes mellitus Typ 1"
* include $csDMP#05 "Asthma bronchiale"
* include $csDMP#06 "COPD (chronic obstructive pulmonary disease)"
* include $csDMP#07 "Chronische Herzinsuffizienz"
* include $csDMP#08 "Depression"
* include $csDMP#09 "Rückenschmerz"
* include $csDMP#10 "Rheuma"
* include $csDMP#11 "Osteoporose"
* include $csDMP#12 "Adipositas - Erwachsene"
