Extension: VSDMKrankenhausleistungenPKV
Context: Coverage
Title: "PKV-Kostenübernahme Krankenhausleistungen"
Description: "Angaben zur Kostenübernahme von Krankenhausleistungen für PKV-Versicherte im Versichertenstammdatenmanagement (VSDM) 2.0"

// Metadaten der StructureDefinition und Beschreibungstext des Strukturelements
* insert Meta
* . 
  * ^short = "Krankenhausleistungen (PKV)"
  * ^definition = """
      Angaben zur Kostenübernahme von Krankenhausleistungen für PKV-Versicherte im Versichertenstammdatenmanagement (VSDM) 2.0
    """

// Zuordnung aus Versicherungsdaten -> Krankenhausleistungen -> Allgemein
* extension contains allgemein 0..1 MS
* extension[allgemein]
  * ^short = "Allgemeine Krankenhausleistungen"
  * ^definition = """
      Versicherter Anteil in Prozent für allgemeine Krankenhausleistungen.
    """
  * ^comment = """
      Prozentwert (0..100)
    """
  * value[x] only unsignedInt
  * valueUnsignedInt obeys unsignedInt-percentage-1

// Zuordnung aus Versicherungsdaten -> Krankenhausleistungen -> Zweibettzimmer
* extension contains zweibett 0..1 MS
* extension[zweibett]
  * ^short = "Zweibettzimmerzuschlag"
  * ^definition = """
      Versicherter Anteil in Prozent für den Zweibettzimmerzuschlag.
    """
  * ^comment = """
      Prozentwert (0..100)
    """
  * value[x] only unsignedInt
  * valueUnsignedInt obeys unsignedInt-percentage-1

// Zuordnung aus Versicherungsdaten -> Krankenhausleistungen -> Einbettzimmer
* extension contains einbett 0..1 MS
* extension[einbett]
  * ^short = "Einbettzimmerzuschlag"
  * ^definition = """
      Versicherter Anteil in Prozent für den Einbettzimmerzuschlag.
    """
  * ^comment = """
      Prozentwert (0..100)
    """
  * value[x] only unsignedInt
  * valueUnsignedInt obeys unsignedInt-percentage-1

// Zuordnung aus Versicherungsdaten -> Krankenhausleistungen -> ZweiEinbettDifferenz
* extension contains zweibettEinbettDifferenz 0..1 MS
* extension[zweibettEinbettDifferenz]
  * ^short = "Differenz zwischen Zwei- und Einbettzimmerzuschlag"
  * ^definition = """
      Versicherter Anteil in Prozent für die Differenz zwischen Zweibettzimmer- und den Einbettzimmerzuschlag (z.B. Beihilfetarif zuzüglich Beihilfeergänzungsversicherung).
    """
  * ^comment = """
      Prozentwert (0..100)
    """
  * value[x] only unsignedInt
  * valueUnsignedInt obeys unsignedInt-percentage-1

// Zuordnung aus Versicherungsdaten -> Krankenhausleistungen -> Wahlarzt
* extension contains wahlarzt 0..1 MS
* extension[wahlarzt]
  * ^short = "Wahlärztliche Leistungen"
  * ^definition = """
      Übernahme wahlärztlicher Leistungen.        
    """
  * ^comment = """
      Angabe als reines Kennzeichen (ja/nein) oder als Prozentwert (0..100) möglich.
    """
  * value[x] only boolean or unsignedInt
  * valueUnsignedInt obeys unsignedInt-percentage-1

// Zuordnung aus Versicherungsdaten -> Krankenhausleistungen -> Belegarzt
* extension contains belegarzt 0..1 MS
* extension[belegarzt]
  * ^short = "Belegärztliche Leistungen"
  * ^definition = """
      Übernahme belegärztlicher Leistungen.        
    """
  * ^comment = """
      Angabe als reines Kennzeichen (ja/nein) oder als Prozentwert (0..100) möglich.
    """
  * value[x] only boolean or unsignedInt
  * valueUnsignedInt obeys unsignedInt-percentage-1
