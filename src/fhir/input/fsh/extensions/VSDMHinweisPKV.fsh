Extension: VSDMHinweisPKV
Context: Coverage
Title: "Hinweise an PKV-Leistungserbringer"
Description: "Optionale Hinweise in Freitextform für PKV-Leistungserbringer im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Hinweise an PKV-Leistungserbringer"
  * ^definition = """
      Optionale Hinweise in Freitextform für Leistungserbringer im Versichertenstammdatenmanagement (VSDM) 2.0.
      Die Relevanz eines Hinweises kann auf einzelne Leistungserbringer-Institutionstypen (professionOID gemäß gemSpec_OID) eingeschränkt werden.
      Hinweise ohne Angabe einer Berufsgruppe sind für alle Leistungserbringer relevant.
    """

// Zuordnung aus Versicherungsdaten -> Hinweis -> Hinweistext
* extension contains text 1..1 MS
* extension[text]
  * ^short = "Hinweistext"
  * ^definition = """
        Hinweistext im Markdown-Format. 
        Der Hinweistext ist nicht zur maschinellen Verarbeitung vorgesehen, sondern muss dem Leistungserbringer lediglich angezeigt werden.
	  """
  * value[x] only markdown

// Zuordnung aus Versicherungsdaten -> Hinweis -> Institutionstypen
* extension contains professionOID 0..* MS
* extension[professionOID]
  * ^short = "betroffene LEI-Typen"
  * ^definition = """
        Leistungserbringer-Institutionstypen, für die der Hinweistext relevant ist.
        Die Angabe erfolgt als Liste von professionOIDs gemäß gemSpec_OID Tabelle Tab_PKI_403-*.
        Die Verwendung anderer OIDs (insbesondere individueller Berufsgruppen) ist nicht zulässig.
        Wenn keine Institutionstypen angegeben sind oder das empfangende System den Filter nicht anzeigen kann, ist der Hinweistext sicherheitshalber anzuzeigen.
  	"""
  * ^comment = """
      Prozentwert (0..100)
    """
  * value[x] only oid
