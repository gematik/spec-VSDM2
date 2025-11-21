Instance: VSDMPatient-GKV-D456789013
InstanceOf: VSDMPatient
Title: "D456789013 Dohle, Dara (GKV)"
Description: "Versichertendaten D456789013 Dohle, Dara (GKV)"
Usage: #inline

* id = "019aa694-6f37-72b0-89ea-042e20e449a8"
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "D456789013"
* birthDate = "1970-01-20"
* name[Name]
  * text = "Dr. rer. nat. Dara Dohle"
  * family = "Dohle"
    * extension[nachname].valueString = "Dohle"
  * given = "Dara"
  * prefix = "Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#X "unbestimmt"
* address[StrassenAdresse]
  * line[+] = "Dohlenallee 4-6"
    * extension[Hausnummer].valueString = "4-6"
    * extension[Strasse].valueString = "Blumenweg"
  * city = "Darmstadt"
  * postalCode = "64297"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 405060"
    * extension[Postfach].valueString = "Postfach 405060"
  * city = "Darmstadt"
  * postalCode = "64283"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
