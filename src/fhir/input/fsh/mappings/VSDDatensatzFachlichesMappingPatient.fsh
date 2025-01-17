Mapping: VSDDatensatzFachlichesMappingPatient
Source: GEM_VSDM2_LOG_VSD_Confirmation
Target: "VSDMPatient"
Id: VSD-Datensatz-Fachliches-Mapping-Patient
Title: "VSD-Datensatz Fachliches Mapping Patient"
Description: "Mapping des Fachmodells aus GEM_VSDM2_LOG_VSD_Confirmation auf das FHIR-Modell ???"

// Metadaten


// Versicherteninformationen
* Versichertendaten
  * VersichertenID -> "VSDMPatient.identifier:KVNR.value"
  * Versicherter
    * Nachname -> "VSDMPatient.name:Name.family.extension:nachname"
