Instance: VSDMPatient-M345678909
InstanceOf: VSDMPatient
Title: "M345678909 Mittelspecht, Michael-Martin"
Description: "Versichertendaten M345678909 Mittelspecht, Michael-Martin"
Usage: #example

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "M345678909"
* birthDate = "2020-04-27"
* name[Name]
  * text = "Michael-Martin Mittelspecht"
  * family = "Mittelspecht"
    * extension[nachname].valueString = "Mittelspecht"
  * given = "Michael-Martin"
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Spechtstraße 130"
    * extension[Hausnummer].valueString = "130"
    * extension[Strasse].valueString = "Spechtstraße"
  * line[+] = "c/o Baumklopfer"
    * extension[Adresszusatz].valueString = "c/o Baumklopfer"
  * city = "München"
  * postalCode = "80331"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
