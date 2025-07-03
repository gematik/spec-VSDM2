Mapping: VSDDatensatzFachlichesMappingPatient
Source: VSDDatensatz
Target: "VSDMPatient"
Id: VSD-Datensatz-Fachliches-Mapping-Patient
Title: "Mapping VSD-Datensatz zu Patient"
Description: "Zuordnung der Versichertendaten des VSD-Datensatzes zum FHIR-Profil VSDMPatient"

// Die Reihenfolge der Elemente in diesem Mapping folgt der Reihenfolge der Elemente im logischen Modell.

* Versichertendaten
  * Versicherter
    * VersichertenID -> "VSDMPatient.identifier:KVNR.value"
      "Die KVNR wird in Übereinstimmung mit dem deutschen Basisprofils kodiert und ist verpflichtend anzugeben."

    * Geburtsdatum -> "VSDMPatient.birthDate"
      "Die Angabe des partiellen Geburtsdatums wird vom FHIR-nativen Datentyp date bereits unterstützt."

    * Vorname -> "VSDMPatient.name:Name.given"
      "FHIR lässt die Angabe mehrerer Vornamen in wiederholten Elementen zu. Davon wird hier kein Gebrauch gemacht."

    * Nachname -> "VSDMPatient.name:Name.family.extension:nachname"
    * Vorsatzwort -> "VSDMPatient.name:Name.family.extension:vorsatzwort"
    * Namenszusatz -> "VSDMPatient.name:Name.family.extension:namenszusatz"
    * Titel -> "VSDMPatient.name:Name.prefix.extension:prefix-qualifier"
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
