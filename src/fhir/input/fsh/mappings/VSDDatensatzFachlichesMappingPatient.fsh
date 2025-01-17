Mapping: VSDDatensatzFachlichesMappingPatient
Source: GEM_VSDM2_LOG_VSD_Confirmation
Target: "VSDMPatient"
Id: VSD-Datensatz-Fachliches-Mapping-Patient
Title: "VSD-Datensatz Fachliches Mapping Patient"
Description: "Mapping des Fachmodells aus GEM_VSDM2_LOG_VSD_Confirmation auf das FHIR-Profil Patient"

// Metadaten


// Versicherteninformationen
* Versichertendaten
  * VersichertenID -> "VSDMPatient.identifier:KVNR.value"
  * Versicherter
    * Nachname -> "VSDMPatient.name:Name.family.extension:nachname"
    * Vorname -> "VSDMPatient.name:Name.given"
    * Vorsatzwort -> "VSDMPatient.name:Name.family.extension:vorsatzwort"
    * Namenszusatz -> "VSDMPatient.name:Name.family.extension:namenszusatz"
    * Titel -> "VSDMPatient.name:Name.prefix.extension:prefix-qualifier"
    * Geburtsdatum -> "VSDMPatient.birthDate"
    * Geschlecht -> "VSDMPatient.gender"
    * StrassenAdresse -> "VSDMPatient.address"
      * Strasse -> "VSDMPatient.Address.line.extension:Strasse"
      * Hausnummer -> "VSDMPatient.Address.line.extension:Hausnummer"
      * Postleitzahl -> "VSDMPatient.Address.postalCode"
      * Ort -> "VSDMPatient.Address.city"
      * Wohnsitzlaendercode -> "VSDMPatient.Address.country"
    * PostfachAdresse -> "VSDMPatient.address"
      * Postfach -> "VSDMPatient.Address.line.extension:Postfach"
      * Postleitzahl -> "VSDMPatient.Address.postalCode"
      * Ort -> "VSDMPatient.address.city"
      * Wohnsitzlaendercode -> "VSDMPatient.Address.country"
    * WIPTIMessengerID -> "VSDMPatient.telecom:ti-messenger"
