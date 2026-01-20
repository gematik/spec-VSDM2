Instance: VSDMTDSCodeIssueSeverity
InstanceOf: ConceptMap
Title: "VSDMTDSCode zu IssueSeverity"
Description: "Ermittlung der IssueSeverity aus dem VSDMTDSCode"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den TDS-Codes die Werte zur Versorgung von VSDMOperationOutcome.issue.severity zu.
    Wichtig: Hier werden nur die TDS-Codes mit Fehler-Adressat "Clientsystem" erfasst, da für Fehler mit Adressat "HTTP-Proxy" keine VSDMOperationOutcome-Ressource erzeugt wird.
  """

* sourceUri = Canonical(VSDMTDSCodeVS)
* targetUri = $vsIssueSeverity
* group[+]
  * source = Canonical(VSDMTDSCodeCS)
  * target = $csIssueSeverity

  * element[+]
    * code = #79010
    * display = "Institutionskennung [ik] aus dem PoPP-Token weist Formatfehler auf."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79011
    * display = "Krankenversichertennummer [kvnr] aus dem PoPP-Token weist Formatfehler auf."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79012
    * display = "Institutionskennung [ik] aus dem PoPP-Token ist dem Fachdienst nicht bekannt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79013
    * display = "Krankenversichertennummer [kvnr] aus dem PoPP-Token ist dem Fachdienst zur Institutionskennung [ik] nicht bekannt."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79014
    * display = "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
    * target[+]
      * code = #error
      * display = "Error"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79030
    * display = "Der HTTP-Header [header] ist ungültig."
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
    * code = #79040
    * display = "Die HTTP-Operation [http-operation] wird nicht unterstützt."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

  * element[+]
    * code = #79100
    * display = "Unerwarteter interner Fehler des Fachdienstes VSDM."
    * target[+]
      * code = #fatal
      * display = "Fatal"
      * equivalence = #wider // The target mapping is wider in meaning than the source concept.

