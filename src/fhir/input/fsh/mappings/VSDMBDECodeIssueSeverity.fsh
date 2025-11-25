Instance: VSDMBDECodeIssueSeverity
InstanceOf: ConceptMap
Title: "VSDMBDECode zu IssueSeverity"
Description: "Ermittlung der IssueSeverity aus dem VSDMBDECode"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den BDE-Codes die Werte zur Versorgung von VSDMOperationOutcome.issue.severity zu.
    Wichtig: Hier werden nur die BDE-Codes mit Fehler-Adressat "Clientsystem" erfasst, da für Fehler mit Adressat "HTTP-Proxy" keine VSDMOperationOutcome-Ressource erzeugt wird.
  """

* sourceUri = Canonical(VSDMBDECodeVS)
* targetUri = $vsIssueSeverity
* group[+]
  * source = Canonical(VSDMBDECodeCS)
  * target = $csIssueSeverity

  * element[+]
    * code = #79010
    * display = "Ungültige Institutionskennung [ik]."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79xxx // TODO hier muss noch ein BDE-Code vergeben werden
    * display = "Unbekannte Institutionskennung [ik]."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79011
    * display = "Ungültige Krankenversichertennummer [kvnr]."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79020
    * display = "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79030
    * display = "Der HTTP-Header [header] ist undgültig."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79031
    * display = "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79032
    * display = "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79033
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79100
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.
