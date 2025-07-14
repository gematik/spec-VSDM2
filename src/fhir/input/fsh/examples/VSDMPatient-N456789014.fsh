Instance: VSDMPatient-N456789014
InstanceOf: VSDMPatient
Title: "N456789014 Nachtigall, Nina Nicole"
Description: "Versichertendaten N456789014 Nachtigall, Nina Nicole"
Usage: #example

* identifier[KVNR].value = "N456789014"
* birthDate = "2011-06-22"
* name[Name]
  * text = "Nina Nicole Nachtigall"
  * family = "Nachtigall"
    * extension[nachname].valueString = "Nachtigall"
  * given = "Nina Nicole"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Sängerweg 14"
    * extension[Hausnummer].valueString = "14"
    * extension[Strasse].valueString = "Sängerweg"
  * city = "Stuttgart"
  * postalCode = "70180"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
