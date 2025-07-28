Instance: VSDMPatient-L234567896
InstanceOf: VSDMPatient
Title: "L234567896 Lachmöwe, Lisa"
Description: "Versichertendaten L234567896 Lachmöwe, Lisa"
Usage: #example

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "L234567896"
* birthDate = "2022-07-02"
* name[Name]
  * text = "Lisa Lachmöwe"
  * family = "Lachmöwe"
    * extension[nachname].valueString = "Lachmöwe"
  * given = "Lisa"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Möwenstraße 12b"
    * extension[Hausnummer].valueString = "12b"
    * extension[Strasse].valueString = "Möwenstraße"
  * city = "Lüneburg"
  * postalCode = "21337"
  * country = $csCountryCodeISO3166#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"
