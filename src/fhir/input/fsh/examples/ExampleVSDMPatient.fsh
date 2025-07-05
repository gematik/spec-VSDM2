Instance: ValidExampleVSDMPatient
InstanceOf: VSDMPatient
Title: "Beispiel-Patient für VSDM 2.0"
Usage: #example
* id = "Valid-437f2555-2396-4c64-a656-e9553161ca3c"

* identifier[KVNR].value = "T024791905"

* name[Name]
  * family = "Fernández"
    * extension[nachname].valueString = "Fernández"
  * given = "Maria"
  * prefix = "Dr."
    * extension[prefix-qualifier].valueCode = #AC
  * text = "Dr. Maria Fernández"


* gender = #female
* birthDate = "1970"
* address[StrassenAdresse]
  * line[+] = "Blumenweg 14"
    * extension[Hausnummer].valueString = "14"
    * extension[Strasse].valueString = "Blumenweg"
  * city = "Berlin"
  * postalCode = "12345"
  * country = $cs-iso3166-1-2#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"


Instance: VSDMPatientSample
InstanceOf: VSDMPatient
Title: "Patient for VSDM 2"
Usage: #example
* id = "437f2555-2396-4c64-a656-e9553161ca3c"

* identifier[KVNR].value = "T024791905"

* name[Name]
  * family = "Graf von und zu Königstein"
    * extension[namenszusatz].valueString = "Graf"
    * extension[nachname].valueString = "Königstein"
    * extension[vorsatzwort].valueString = "von und zu"
  * given = "Ludger"
  * prefix = "Prof. Dr. med. Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
  * text = "Prof. Dr. med. Dr. rer. nat. Ludger Graf von und zu Königstein"

* gender = #male
* birthDate = "1935-06-22"
* address[StrassenAdresse]
  * line[+] = "Blumenweg 14"
    * extension[Hausnummer].valueString = "14"
    * extension[Strasse].valueString = "Blumenweg"
  * line[+] = "Hinterhaus links"
    * extension[Adresszusatz].valueString = "Hinterhaus links"
  * city = "Esens"
  * postalCode = "26427"
  * country = $cs-iso3166-1-2#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
* address[PostfachAdresse]
  * line[+] = "Postfach 123456"
    * extension[Postfach].valueString = "Postfach 12345"
  * city = "Esens"
  * postalCode = "26429"
  * country = $cs-iso3166-1-2#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
