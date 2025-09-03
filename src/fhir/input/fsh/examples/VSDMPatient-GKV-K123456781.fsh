Instance: VSDMPatient-GKV-K123456781
InstanceOf: VSDMPatient
Title: "K123456781 Kiebitz, Karin (GKV)"
Description: "Versichertendaten K123456781 Kiebitz, Karin (GKV)"
Usage: #inline

* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "K123456781"
* birthDate = "1933"
* name[Name]
  * text = "Karin Kiebitz"
  * family = "Kiebitz"
    * extension[nachname].valueString = "Kiebitz"
  * given = "Karin"
* gender = #female
* address[PostfachAdresse]
  * line[+] = "Postfach 554433"
    * extension[Postfach].valueString = "Postfach 554433"
  * city = "Luxembourg"
  * postalCode = "1120"
  * country = "Luxemburg"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#LU
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#L
