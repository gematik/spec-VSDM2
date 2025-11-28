CodeSystem: VSDMBDECodeCS
Title: "VSDM-BDE-Codes"
Description: "Fehlercodes der Betriebsdatenerfassung (BDE) im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta-CodeSystem
* ^caseSensitive = true
* ^content = #complete
* ^purpose = """
    Dieses CodeSystem enthält alle Fehlercodes der Betriebsdatenerfassung (BDE), der Fachdienst gemäß Anforderung A_27012-01 und darin enthaltener Tabelle TAB_FACHDIENST_VSDM_FEHLER-REFERENZEN_UND_BDE-CODES liefern muss.
    Diese BDE-Codes decken alle in der Spezifikation vorgesehenen Fehlersituationen ab.
    Dieses CodeSystem definiert die genauen Fehlerzustände und dient als Ausgangspunkt für verschiedene Zuordnungen (ConceptMaps).
    Je nach Fehlerquelle werden diese Fehler entweder an das Clientsystem oder an den HTTP Proxy des ZETA Guard adressiert.
    Nur für die Fehlercodes mit Adressat "Clientsystem" wird eine Fehlerbeschreibung in Form einer VSDMOperationOutcome-Struktur erzeugt, die dann einen Fehlercode aus dem CodeSystem VSDMErrorcodeCS enthält.   
  """

// Property zur Aufnahme des Fehler-Adressaten
* ^property[+].code = #target
* ^property[=].uri = "https://gematik.de/fhir/vsdm2/CodeSystem/VSDMBDECodeCS#target"
* ^property[=].description = "Fehler-Adressat (client = Clientsystem gemäß A_26770; proxy = HTTP Proxy des ZETA Guard gemäß A_26993)"
* ^property[=].type = #code

// Property zur Benennung möglicher fehlerhafter Felder
* ^property[+].code = #location
* ^property[=].uri = "https://gematik.de/fhir/vsdm2/CodeSystem/VSDMBDECodeCS#location"
* ^property[=].description = "fehlerhafte Felder (zur Versorgung von OperationOutcome.issue.location)"
* ^property[=].type = #string

* #79010 "Ungültige Institutionskennung [ik]."
  * ^definition = """
      Die IK aus dem PoPP-Token weist Formatfehler auf.
      Mögliche Ursachen:
      Fehler im PoPP-Service i.V.m. Fehler im Clientsystem und/oder indirektem Angriffsversuch (PoPP-Service stellt Token trotz fehlerhafter IK aus) oder
      direkter Angriffsversuch (Angreifer kann PoPP-Signaturen fälschen).
    """
    // TODO Verweis auf neue Anforderung
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.ZETA-PoPP-Token-Content.insurerId"

* #79xxx "Unbekannte Institutionskennung [ik]." // TODO hier muss noch ein BDE-Code vergeben werden
  * ^definition = """
      Die IK aus dem PoPP-Token ist dem Fachdienst nicht bekannt.
      Mögliche Ursachen:
      Implementierungsfehler in der Dienstlokalisierung (Clientsystem schickt korrektes PoPP-Token an den falschen Fachdienst),
      DNS-Fehler (Namensauflösung Clientsystem liefert IP von falschem Fachdienst),
      Konfigurationsfehler Fachdienst (z.B. falsche Datenbank-/Backend-Zuordnung),
      Fehler im PoPP-Service i.V.m. Fehler im Clientsystem und/oder indirektem Angriffsversuch (PoPP-Service stellt Token trotz fehlerhafter IK aus) oder
      direkter Angriffsversuch (Angreifer kann PoPP-Signaturen fälschen).
    """
    // TODO Verweis auf neue Anforderung
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.ZETA-PoPP-Token-Content.insurerId"

* #79011 "Ungültige Krankenversichertennummer [kvnr]."
  * ^definition = """
      Die KVNR aus dem PoPP-Token weist Formatfehler auf.
      Mögliche Ursachen:
      Fehler im PoPP-Service i.V.m. Fehler im Clientsystem und/oder indirektem Angriffsversuch (PoPP-Service stellt Token trotz fehlerhafter KVNR aus) oder
      direkter Angriffsversuch (Angreifer kann PoPP-Signaturen fälschen).
    """
    // TODO Verweis auf neue Anforderung
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.ZETA-PoPP-Token-Content.patientId"

* #79020 "Die Versichertenstammdaten zur Krankenversichertennummer [kvnr] konnten für die Institutionskennung [ik] nicht ermittelt werden."
  * ^definition = """
      Die KVNR aus dem PoPP-Token ist dem Fachdienst nicht bekannt.
      Mögliche Ursachen:
      Es existiert kein Versicherungsverhältnis beim adressierten Kostenträger oder das Versicherungsverhältnis ist ausgelaufen, der adressierte Kostenträger ist also nicht mehr zuständig.
    """
    // TODO Verweis auf neue Anforderung
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.ZETA-PoPP-Token-Content.insurerId, http.ZETA-PoPP-Token-Content.patientId"

* #79030 "Der HTTP-Header [header] ist undgültig."
  * ^definition = """
      Der genannte HTTP-Header weist Formatfehler auf.
      Mögliche Ursachen:
      Implementierungsfehler im Clientsystem (Verstoß gegen RFC 2616).
      Relevante Anforderungen: A_26750, A_26751
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.[header]"

* #79031 "Das vom Clientsystem angefragte Datenformat [media type] wird nicht unterstützt."
  * ^definition = """
      Der HTTP-Header Accept enthält nicht unterstütztes Format.
      Mögliche Ursachen:
      Implementierungsfehler im Clientsystem.
      Relevante Anforderungen: A_26750
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.Accept"

* #79032 "Das vom Clientsystem angefragte Kodierungsverfahren [encoding scheme] wird nicht unterstützt."
  * ^definition = """
      Der HTTP-Header Accept-Encoding enthält nicht unterstütztes Kodierungsverfahren.
      Mögliche Ursachen:
      Implementierungsfehler im Clientsystem.
      Relevante Anforderungen: A_26751
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.Accept-Encoding"

* #79033 "Der Änderungsindikator [etag_value] kann nicht verarbeitet werden."
  * ^definition = """
      Der HTTP Header If-none-match fehlt.
      Mögliche Ursachen:
      Implementierungsfehler im Clientsystem.
      Relevante Anforderungen: A_26755-01
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #client
  * ^property[+].code = #location
  * ^property[=].valueString = "http.If-None-Match"

* #79040 "Die HTTP-Operation [http-operation] wird nicht unterstützt."
  * ^definition = """
      Die HTTP-Methode ist nicht GET.
      Mögliche Ursachen:
      Fehlkonfiguration ZETA Guard.
      Relevante Anforderungen: A_26753
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #proxy

* #79041 "Der angefragte Endpunkt [endpoint] wird nicht unterstützt."
  * ^definition = """
      Der HTTP-Endpunkt ist nicht /vsdservice/v1/vsdmbundle.
      Mögliche Ursachen:
      Fehlkonfiguration ZETA Guard.
      Relevante Anforderungen: A_26735
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #proxy

* #79100 "Unerwarteter interner Fehler des Fachdienstes VSDM."
  * ^definition = """
      Der Versichertenstammdatendienst ist aktuell nicht in der Lage, die Anfrage zu beantworten.
      (Keine Aussage zu möglichen Ursachen - Protokolle des Resource Servers prüfen.)
    """
    // TODO Verweis auf neue Anforderung
  * ^property[+].code = #target
  * ^property[=].valueCode = #client

* #79206 "Der HTTP-Header ZETA-User-Info fehlt."
  * ^definition = """
      Der HTTP-Header ZETA-User-Info muss vom HTTP Proxy des ZETA Guard in die weitergeleitete Anfrage eingefügt werden.
      Mögliche Ursachen:
      Fehlkonfiguration ZETA Guard oder
      Implementierungsfehler ZETA Guard.
      Relevante Anforderungen: A_26754-01
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #proxy

* #79207 "Der HTTP-Header ZETA-PoPP-Token-Content fehlt."
  * ^definition = """
      Der HTTP-Header ZETA-PoPP-Token-Content muss vom HTTP Proxy des ZETA Guard in die weitergeleitete Anfrage eingefügt werden.
      Mögliche Ursachen:
      Fehlkonfiguration ZETA Guard oder
      Implementierungsfehler ZETA Guard.
      Relevante Anforderungen: A_26754-01
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #proxy

* #79401 "Der Inhalt des HTTP-Headers ZETA-User-Info weist Format- oder Inhaltsfehler auf."
  * ^definition = """
      Der HTTP-Header ZETA-User-Info muss vom HTTP Proxy des ZETA Guard mit den Daten aus der Client-Registrierung und -Anmeldung erstellt werden.
      Mögliche Ursachen:
      Fehlkonfiguration ZETA Guard oder
      Implementierungsfehler ZETA Guard.
      Relevante Anforderungen: A_26754-01
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #proxy

* #79402 "Der Inhalt des HTTP-Headers ZETA-PoPP-Token-Content weist Format- oder Inhaltsfehler auf."
  * ^definition = """
      Der HTTP-Header ZETA-PoPP-Token-Content muss vom HTTP Proxy des ZETA Guard aus den Inhalten des PoPP-Tokens erstellt werden.
      Mögliche Ursachen:
      Fehlkonfiguration ZETA Guard oder
      Implementierungsfehler ZETA Guard.
      Relevante Anforderungen: A_26754-01
    """
  * ^property[+].code = #target
  * ^property[=].valueCode = #proxy
