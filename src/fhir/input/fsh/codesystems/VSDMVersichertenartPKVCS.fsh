CodeSystem: VSDMVersichertenartPKVCS
Title: "Versichertenart (PKV)"
Description: "PKV-Versichertenart im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta-CodeSystem
* ^caseSensitive = true
* ^content = #complete

* #VN "Versicherungsnehmer"
  * ^definition = """
      Die behandelte Person ist selbst der Versicherungsnehmer.
    """
* #VP "versicherte Person"
  * ^definition = """
      Die behandelte Person ist nicht selbst der Versicherungsnehmer.
    """
