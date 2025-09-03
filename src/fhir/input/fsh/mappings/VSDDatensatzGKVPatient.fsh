Mapping: VSDDatensatzGKVPatient
Source: VSDDatensatzGKV
Target: "VSDMPatient"
Id: VSD-Datensatz-GKV-Patient
Title: "Mapping VSD-Datensatz GKV zu Patient"
Description: "Zuordnung der Versichertendaten des VSD-Datensatzes GKV zum FHIR-Profil VSDMPatient"

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
      "Diese Erweiterung nimmt die Geschlechtsangabe gemäß der geforderten Wertetabelle auf. Die Pflicht zur Angabe des Werts für GKV-Patienten wird durch die Invariante VSDMCoverageGKV-gender-1 abgebildet."
    
    * Vorsatzwort -> "VSDMPatient.name:Name.family.extension:vorsatzwort"
      "Vorsatzwort zum Nachnamen. Wichtig: Hinweise zur Bildung des kombinierten Nachnamens beachten."

    * Namenszusatz -> "VSDMPatient.name:Name.family.extension:namenszusatz"
      "Zusatz zum Nachnamen. Wichtig: Hinweise zur Bildung des kombinierten Nachnamens beachten."

    * Titel -> "VSDMPatient.name:Name.prefix"
      "Kennzeichnung des akademischen Titels mittels Erweiterung siehe Elementdokumentation."

    * PostfachAdresse -> "VSDMPatient.address:PostfachAdresse"
      "Postfachadressen werden mit dem Typ \"postal\" gekennzeichnet."

      * Postleitzahl -> "VSDMPatient.address:PostfachAdresse.postalCode"
        
      * Ort -> "VSDMPatient.address:PostfachAdresse.city"

      * Postfach -> "VSDMPatient.address:PostfachAdresse.line.extension:Postfach"
        "Hinweise zur Bildung der Adresszeilen beachten."

      * Wohnsitzlaendercode -> "VSDMPatient.address:PostfachAdresse.country"
        "Hinweise zur Befüllung der Extensions beachten. Die Pflicht zur Angabe des Werts für GKV-Patienten wird durch die Invariante VSDMCoverageGKV-address-1 abgebildet."

    * StrassenAdresse -> "VSDMPatient.address:StrassenAdresse"
      "Strassenadressen (Meldeadressen) werden mit dem Typ \"physical\" gekennzeichnet."

      * Postleitzahl -> "VSDMPatient.address:StrassenAdresse.postalCode"

      * Ort -> "VSDMPatient.address:StrassenAdresse.city"

      * Wohnsitzlaendercode -> "VSDMPatient.address.country"
        "Hinweise zur Befüllung der Extensions beachten. Die Pflicht zur Angabe des Werts für GKV-Patienten wird durch die Invariante VSDMCoverageGKV-address-1 abgebildet."

      * Strasse -> "VSDMPatient.address:StrassenAdresse.line.extension:Strasse"
        "Hinweise zur Bildung der Adresszeilen beachten."

      * Hausnummer -> "VSDMPatient.address:StrassenAdresse.line.extension:Hausnummer"
        "Hinweise zur Bildung der Adresszeilen beachten."
      
      * Anschriftenzusatz -> "VSDMPatient.address:StrassenAdresse.line.extension:Adresszusatz"
        "Hinweise zur Bildung der Adresszeilen beachten."
