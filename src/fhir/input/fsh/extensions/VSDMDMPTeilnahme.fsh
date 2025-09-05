Extension: VSDMDMPTeilnahme
Context: Coverage
Title: "Teilnahme an Disease Management-Programm"
Description: "Angaben zur Teilnahme eines Versicherten an einem Disease Management-Programm im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Teilnahme an Disease Management-Programm"
  * ^definition = """
      Angaben zur Teilnahme eines Versicherten an einem Disease Management-Programm im Versichertenstammdatenmanagement (VSDM) 2.0.
    """

// Zuordnung aus Versicherungsdaten -> DMP -> DMP
* extension contains dmp 1..1 MS
* extension[dmp]
  * ^short = "Schlüssel des DMP"
  * ^definition = """
      Gibt den Schlüssel des DMP an, in das der Versicherte eingeschrieben ist.
	  """
  * ^comment = """
      Hier sind nur die DMP-Schlüssel zulässig, die einzelne DMP identifizieren (keine Kombinationswerte).
      Der bisherigen Leerwerts 00 darf nicht verwendet werden; stattdessen ist die gesamte Extension nicht anzugeben, wenn keine DMP-Teilnahme registriert ist.
    """
  * value[x] 1..1 
  * value[x] only Coding
  * value[x] from VSDMDMPVS (required)
    * system 1..
    * system = $csDMP
    * code 1..

// Zuordnung aus Versicherungsdaten -> DMP -> Beginn/Ende
* extension contains zeitraum 1..1 MS
* extension[zeitraum]
  * ^short = "Einschreibezeitraum"
  * ^definition = """
        Gibt den Zeitraum der Einschreibung des Versicherten in das DMP an.
	"""
  * value[x] only Period
  * valuePeriod
    * start 1..1
      * obeys date-precision-1
    * end 0..1
      * obeys date-precision-1

// Zuordnung aus Versicherungsdaten -> DMP -> digitalesDMP
* extension contains digitalesDMP 1..1  MS
* extension[digitalesDMP]
  * ^short = "digitales DMP"
  * ^definition = """
      Gibt an, ob das DMP als digitales DMP durchgeführt wird.
    """
  * value[x] 1..1 
  * value[x] only boolean
