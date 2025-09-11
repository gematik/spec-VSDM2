Mapping: VSDDatensatzPKVPatient
Source: VSDDatensatzPKV
Target: "VSDMPatient"
Id: VSD-Datensatz-PKV-Patient
Title: "Mapping VSD-Datensatz PKV zu Patient"
Description: "Zuordnung der Versichertendaten des VSD-Datensatzes PKV zum FHIR-Profil VSDMPatient"

// Die Reihenfolge der Elemente in diesem Mapping folgt der Reihenfolge der Elemente im logischen Modell.

* Versichertendaten
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

  * Postfachadresse -> "VSDMPatient.address:PostfachAdresse"
    "Postfachadressen werden mit dem Typ \"postal\" gekennzeichnet."

    * Postfach -> "VSDMPatient.address:PostfachAdresse.line.extension:Postfach"
      "Hinweise zur Bildung der Adresszeilen beachten."

    * Postleitzahl -> "VSDMPatient.address:PostfachAdresse.postalCode"
      
    * Ort -> "VSDMPatient.address:PostfachAdresse.city"

    * Land -> "VSDMPatient.address:PostfachAdresse.country"
      "Hinweise zur Befüllung der Extensions beachten."

  * Wohnsitzadresse -> "VSDMPatient.address:StrassenAdresse"
    "Wohnsitzadressen werden mit dem Typ \"physical\" gekennzeichnet."

    * Strasse -> "VSDMPatient.address:StrassenAdresse.line.extension:Strasse"
      "Hinweise zur Bildung der Adresszeilen beachten."

    * Hausnummer -> "VSDMPatient.address:StrassenAdresse.line.extension:Hausnummer"
      "Hinweise zur Bildung der Adresszeilen beachten."
    
    * Anschriftenzusatz -> "VSDMPatient.address:StrassenAdresse.line.extension:Adresszusatz"
      "Hinweise zur Bildung der Adresszeilen beachten."

    * Postleitzahl -> "VSDMPatient.address:StrassenAdresse.postalCode"

    * Ort -> "VSDMPatient.address:StrassenAdresse.city"

    * Land -> "VSDMPatient.address.country"
      "Hinweise zur Befüllung der Extensions beachten."

  * TIMessengerID -> "VSDMPatient.telecom:TIMessengerID"
    "Hinweise zur Kodierung der TI-Messenger-ID beachten."
