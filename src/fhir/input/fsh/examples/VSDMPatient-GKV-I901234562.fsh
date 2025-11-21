Instance: VSDMPatient-GKV-I901234562
InstanceOf: VSDMPatient
Title: "I901234562 Ibis, Ingrid (GKV)"
Description: "Versichertendaten I901234562 Ibis, Ingrid (GKV)"
Usage: #inline

* id = "019aa694-2007-76e7-80d0-37887bfb769f"
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "I901234562"
* birthDate = "1942-02-28"
* name[Name]
  * text = "Ingrid Ibis"
  * family = "Ibis"
    * extension[nachname].valueString = "Ibis"
  * given = "Ingrid"
* gender = #female
* address[StrassenAdresse]
  * line[+] = "Im Balz 95"
    * extension[Hausnummer].valueString = "95"
    * extension[Strasse].valueString = "Im Balz"
  * city = "Fischbach"
  * postalCode = "7430"
  * country = "Luxemburg"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#LU
    * extension[anlage8].valueCoding = $csAnlage8Laenderkennzeichen#L
