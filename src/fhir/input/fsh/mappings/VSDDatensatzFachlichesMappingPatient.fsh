Mapping: VSDDatensatzFachlichesMappingPatient
Source: VSDDatensatz
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
      * Strasse -> "VSDMPatient.address.AddressDeBasis.line.extension:Strasse"
      * Hausnummer -> "VSDMPatient.address.AddressDeBasis.line.extension:Hausnummer"
      * Postleitzahl -> "VSDMPatient.address.postalCode"
      * Ort -> "VSDMPatient.address.city"
      * Anschriftenzusatz -> "Gibt die relevanten Zusaetze zur Anschrift an. Als Anschriftenzusatz kann z. B. Hinterhaus angegeben werden." "VSDMPatient.address.AddressDeBasis.line.extension:Adresszusatz"
      * Wohnsitzlaendercode -> "VSDMPatient.address.country"
    * PostfachAdresse -> "VSDMPatient.address"
      * Postfach -> "VSDMPatient.address.AddressDeBasis.line.extension:Postfach"
      * Postleitzahl -> "VSDMPatient.address.postalCode"
      * Ort -> "VSDMPatient.address.city"
      * Wohnsitzlaendercode -> "VSDMPatient.Address.country"
    * WIPTIMessengerID -> "VSDMPatient.telecom:ti-messenger"
