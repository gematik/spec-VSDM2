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

    * Nachname -> "VSDMPatient.name:Name.family"
      "Nachname mit Vorsatzwort und Namenszusatz. Wichtig: Hinweise zur Bildung des kombinierten Nachnamens beachten."

    * Nachname -> "VSDMPatient.name:Name.family.extension:nachname"
      "Nachname ohne Vorsatzwort und Namenszusatz. Wichtig: Hinweise zur Bildung des kombinierten Nachnamens beachten."

    * Geschlecht -> "VSDMPatient.gender"
      "Das Geschlecht wird auf die standardisierten FHIR-Werte abgebildet. Da damit nicht alle Werte abgebildet werden können, kommt eine Erweiterung zum Einsatz."
    
    * Geschlecht -> "VSDMPatient.gender.extension:other-amtlich"
      "Diese Erweiterung nimmt die Geschlechtsangabe gemäß der geforderten Wertetabelle auf."
    
    * Vorsatzwort -> "VSDMPatient.name:Name.family.extension:vorsatzwort"
      "Vorsatzwort zum Nachnamen. Wichtig: Hinweise zur Bildung des kombinierten Nachnamens beachten."

    * Namenszusatz -> "VSDMPatient.name:Name.family.extension:namenszusatz"
      "Zusatz zum Nachnamen. Wichtig: Hinweise zur Bildung des kombinierten Nachnamens beachten."

    * Titel -> "VSDMPatient.name:Name.prefix"
      "Kennzeichnung des akademischen Titels mittels Erweiterung siehe Elementdokumentation."

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
