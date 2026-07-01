Instance: VSDMDEUEVAnlage8ISO3166Ergaenzung
InstanceOf: ConceptMap
Title: "DEÜV Anlage 8 zu ISO 3166-1 (Ergänzung)"
Description: "Ermittlung des vorläufigen Ländercodes nach ISO 3166-1 aus dem Ländercode nach DEÜV Anlage 8"
Usage: #definition

* insert Meta-Inst
* purpose = """
    Diese ConceptMap ordnet den Ländercodes aus der DEÜV Anlage 8 die vorläufigen Ländercodes in Anlehnung an ISO 3166-1 zu.
    Zur Ablage dieser Werte ist eine separate Extension zu verwenden (siehe Profilierung der jeweiligen Address-Strukturen).
  """

* sourceUri = $vsAnlage8Laenderkennzeichen
* targetUri = Canonical(VSDMISO3166ErgaenzungVS|1.1.0-dev)
* group[+]
  * source = $csAnlage8Laenderkennzeichen
  * target = Canonical(VSDMISO3166ErgaenzungCS|1.1.0-dev)

  * element[+]
    * code = #KOS
    * display = "Kosovo"
    * target[+]
      * code = #XK
      * display = "Kosovo, Republic of"
      * equivalence = #equal

  * element[+]
    * code = #CP
    * display = "Clipperton"
    * target[+]
      * code = #CP
      * display = "Clipperton"
      * equivalence = #equal

