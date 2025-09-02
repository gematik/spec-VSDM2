Extension: VSDMBeihilfe
Context: Coverage
Title: "Beihilfeanspruch"
Description: "Angaben zum Beihilfe-Anspruch eines PKV-Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Beihilfeanspruch"
  * ^definition = """
      Angaben zum Beihilfe-Anspruch eines PKV-Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0.
      Diese Struktur ist für Versicherte ohne Beihilfeanspruch nicht anzugeben.      
    """
  * ^comment = """
      Hintergrundinformationen siehe https://www.pkv.de/wissen/private-krankenversicherung/leistungen-und-erstattung/privatversichert-im-beamtenverhaeltnis/
    """

// Zuordnung aus Versicherungsdaten -> Beihilfe -> Beihilfeanspruch
* extension contains anspruch 1..1 MS
* extension[anspruch]
  * ^short = "Versicherter mit Beihilfeanspruch"
  * ^definition = """
      Kennzeichnet einen Versicherten mit Beihilfeanspruch.
      Dieses Kennzeichen ist anzugeben, sobald die Struktur Beihilfe erforderlich wird. 
      Das ist notwendig, da die Beihilfequote nicht immer vorliegt. 
	  """
  * value[x] 1..1 
  * value[x] only boolean

// Zuordnung aus Versicherungsdaten -> Beihilfe -> Beihilfeanspruch
* extension contains quote 0..1 MS
* extension[quote]
  * ^short = "Quote PKV bei Beihilfe"
  * ^definition = """
      Prozentwert des über die Beihilfe hinaus in der PKV versicherten Anteil.
  	"""
  * ^comment = """
      Prozentwert (0..100)
    """
  * value[x] only unsignedInt
  * valueUnsignedInt obeys unsignedInt-percentage-1

