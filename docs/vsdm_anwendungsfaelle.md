# VSD vom Fachdienst abrufen
Der Anwendungsfall ermöglicht dem Leistungserbringer,
- das gültige Versicherungsverhältnis beim erstmaligen Quartalsbesuch zu prüfen,
- die jeweils zum Besuch aktuellen VSD und
- den Prüfungsnachweis für die Abrechnung zu erhalten

Der Abruf erfolgt jedoch nur bei vorliegendem Versorgungskontext der durch den PoPP-Dienst in Form eines PoPP-Tokens nachgewiesen wurde.

## UC VSD lesen
Voraussetzung: Ein gültiger Behandlungskontext in Form eines gültigen PoPP-Token liegt im PS vor.
Standardablauf
- Das PS ruft die Operation ReadVSD am Fachdienst VSDM mit den Parametern *irgendwas=true* und *irgendwas=true* auf.

- Der Fachdienst VSDM übermittelt die VSD an das PS
- Der Fachdienst erstellt den Prüfungsnachweis und übermittelt ihn an das PS
- Das PS speichert die VSD und den Prüfungsnachweis

### Variante UC VSD lesen bei vorliegendem PoPP-Token
Voraussetzung: Der PoPP-Token ist gültig. Da der Versorgungskontext bereits vorliegt (quartalsmäßiger Abruf der VSD ist bereits erfolgt) kann der im PS gespeicherte und gültige PoPP-Token verwendet werden.
Standardablauf -> gibt es auch hier einen weiteren Prüfungsnachweis?
- Das PS prüft den Token auf zeitliche Gültigkeit (Prüfung, ob der Token im aktuellen Quartal erzeugt wurde)
- Das PS ruft die Operation ReadVSD am Fachdienst VSDM mit den Parametern *irgendwas=true* und *irgendwas=true* auf.
- Der Fachdienst VSDM prüft anhand eines Hashwertes, ob aktuellere Daten vorleigen


# VSD von eGK lesen
Dieser Anwendungsfall kommt dann zum tragen, wenn die VSD nicht online vom Fachdienst der Kasse abgerufen werden können. Die erhaltenen Daten von der eGK dienen dann zur Nutzung von bereits etablierten Ersatzverfahren ausserhalb des VSDM 2.0.
