Instance: VSDMPatient-GKV-L234567896
InstanceOf: VSDMPatient
Title: "L234567896 Lachmöwe, Lisa (GKV)"
Description: "Versichertendaten L234567896 Lachmöwe, Lisa (GKV)"
Usage: #inline

* id = "019aa693-f5c1-7f37-a51f-0cffee08db71"
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
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
