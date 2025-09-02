ValueSet: VSDMDMPVS
Title: "Disease-Management-Programm (DMP)"
Description: "Disease-Management-Programm im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta
* ^purpose = """
    Einschränkung des KBV-CodeSystem auf im VSDM 2.0 gültige Werte
  """

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

// TODO Zu diskutieren: Soll dieses ValueSet perspektivisch von der KBV (die auch das CodeSystem verantwortet) gepflegt werden?
