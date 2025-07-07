Extension: VSDMKostentraegerRolle
Context: Coverage.payor
Title: "Rolle des Kostenträgers"
Description: "Rolle des Kostenträgers"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Rolle des Kostenträgers"
  * ^definition = """
      Die Rolle des Kostenträgers im Versicherungsverhältnis dient der Unterscheidung zwischen Haupt- und abrechnendem Kostenträger.
    """

* insert Meta
* value[x] only Coding
* value[x] from VSDMKostentraegerRolleVS (required)
  * system 1..
  * system = Canonical(VSDMKostentraegerRolleCS)
  * code 1..
