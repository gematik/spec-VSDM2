Profile: VSDMPatient
Parent: VSDMPatientBase
Title: "Versicherter"
Description: "Angaben zum Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0"

// Die Reihenfolge der Elemente in diesem Profil entspricht der Reihenfolge der Elemente in den FHIR-Datentypen.

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* .
  * ^short = "Versicherter im VSDM"
  * ^definition = """
      Der VSDMPatient bildet einen Versicherten im Versichertenstammdatenmanagement (VSDM) 2.0 ab.
      Der VSDMPatient ist vom zentralen TIPatient abgeleitet.
      Der Ressource Server des VSDM stellt allerdings keinen FHIR Data Service im Sinne des Implementation Guide TI Common dar, so dass die meisten Anforderungen dieses IG auf den VSDMPatient nicht zutreffen.
      Dieser Sachverhalt wird in einer Folgeversion des IG klargestellt.
    """

// Zuordnung aus Versichertendaten -> Versicherter -> VersichertenID
* identifier[KVNR] 1..1 // MS bereits durch TIPatient vorgegeben
