Instance: VSDMPatient-PKV-F678901231
InstanceOf: VSDMPatient
Title: "F678901231 von Fasan, Frank Florian (PKV)"
Description: "Versichertendaten F678901231 von Fasan, Frank Florian (PKV)"
Usage: #inline

* id = "019aa693-4d88-7efc-8b76-73f2e3afd5e7"
* meta.profile[0] = Canonical(VSDMPatient|1.0.0)

* identifier[KVNR].value = "F678901231"
* birthDate = "1983-01-19"
* name[Name]
  * text = "Prof. Dr. med. Frank Florian von Fasan"
  * family = "von Fasan"
    * extension[nachname].valueString = "Fasan"
    * extension[vorsatzwort].valueString = "von"
  * given = "Frank Florian"
  * prefix = "Prof. Dr. med."
    * extension[prefix-qualifier].valueCode = #AC
* gender = #male
* address[StrassenAdresse]
  * line[+] = "Fasanenallee 50"
    * extension[Hausnummer].valueString = "50"
    * extension[Strasse].valueString = "Fasanenallee"
  * city = "Bern"
  * postalCode = "3013"
  * country = "Schweiz"
    * extension[countryCode].valueCoding = $csCountryCodeISO3166#CH
