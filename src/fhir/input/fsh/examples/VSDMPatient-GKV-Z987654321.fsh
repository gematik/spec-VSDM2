Instance: VSDMPatient-GKV-Z987654321
InstanceOf: VSDMPatient
Title: "Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Description: "Versichertendaten Z987654321 Graf von und zu Zaunkönig, Zacharias (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "Z987654321"
* birthDate = "1987-05-16"
* name[Name]
  * text = "Prof. Dr. rer. nat. Zacharias Graf von und zu Zaunkönig"
  * family = "Graf von und zu Zaunkönig"
    * extension[namenszusatz].valueString = "Graf"
    * extension[nachname].valueString = "Zaunkönig"
    * extension[vorsatzwort].valueString = "von und zu"
  * given = "Zacharias"
  * prefix = "Prof. Dr. rer. nat."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #other
  * extension[other-amtlich].valueCoding = $csGenderAmtlich#X "unbestimmt"
* address[StrassenAdresse]
  * line[+] = "Zaunkönigpfad 99x"
    * extension[Hausnummer].valueString = "99x"
    * extension[Strasse].valueString = "Zaunkönigpfad"
  * line[+] = "zweites Nest rechter Ast"
    * extension[Adresszusatz].valueString = "zweites Nest rechter Ast"
  * city = "Zwickau"
  * postalCode = "08066"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
* address[PostfachAdresse]
  * line[+] = "Postfach 885522"
    * extension[Postfach].valueString = "Postfach 885522"
  * city = "Zwickau"
  * postalCode = "08062"
  * country = "Deutschland"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#DE
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#D
