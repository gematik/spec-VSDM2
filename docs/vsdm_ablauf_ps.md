# Abläufe im PS

**Aufnahme des Versicherten**

Im Primärsystem dient bei der Anmeldung die eGK und zukünftig die GesundheitsID des Versicherten zur Aufnahme bzw. Identifikation des Versicherten. 
Dies beinhaltet
  - die Herstellung des Versorgungskontexres
  - den Abruf der VSD beim Fachdienst VSDM 2.0
  - den Abruf der Prüfziffer für die Abrechnung
  - bei unbekannten Versicherten das Anlegen des Patientenstammblatts
  - bei bekannten Versicherten ggf. das Aktualisieren des Patientenstammblatts
    
Beim ersten Kontakt des Versicherten im laufenden Quartal muss das PS den Abruf der VSD beim Fachdienst VSDM durchführen. Bei Folgebesuchen des Versicherten im laufenden Quartal kann immer ein erneuter Abruf der VSD erfolgen, um Änderungen in den VSD in das PS übernehmen zu können. Dies kann insbesondere wichtig sein in Bezug auf Anpassungen zum Versicherungsschutz oder zur Kostenabdeckung. 

**Patientenstammblatt anlegen**

Ist ein Versicherten beim Besuch der LEI bis dahin unbekannt, muss eine neues Patientenstammblatt angelegt werden. Dies kann unmittelbar an den Abruf der VSD gekoppelt sein, d.H. nach dem Erhalt der VSD erstellt das PS automatisch ein Patientenstammblatt und überführt alle Informationen aus dem Abruf der VSD. 
Der Nutzer soll einen Hinweis erhalten, dass der Versicherte noch nicht im PS existiert und eine neues Patientenstammblatt angelegt wird.

**Patientenstammblatt anzeigen**

Existiert bereits ein Patientenstammblatt, soll das PS den Abruf der VSD automatisch starten wenn das Patientenstammblatt im Rahmen eines Folgebesuchs geöffnet wird. Liegt im laufenden Quartal noch keine Prüfziffer vor muss der Abruf der VSD erfolgen.
Das PS soll dem Nutzer die Möglichkeit bieten, den Abruf der VSD manuell zu starten.

Die Anzeige des zum Versicherten gehörigen Patientenstammblatt kann auf unterschiedliche Arten erfolgen:

- Automatische Identifikation des Patientenstammblatts im PS anhand der KVNR durch Stecken der eGK oder Verwendung der GesundheitsID des Versicherten
- Manuelle Identifikation des Patientenstammblatts des Verischerten, z.B. anhand des Namens und Geburtsdatums 

Bei der automatischen Identifikation soll die Zuordnung von Versichertem und Patientenstammblatt im PS über die KVNR erfolgen, da diese einen eindeutigen Bezug zum Versicherten herstellt.

Auf welche Weise der Aufnahmeprozess durchgeführt wird, wird in der Konfiguration des PS festgelegt oder ist ein Leistungsmerkmal des PS. Empfohlen wird die automatische Unterstützung einer Neuanlage oder Aktualisierung des Patientenstammblatts.

Konfigurationsparameter zum onlie Abruf VSD im PS
| <!-- -->      | <!-- -->        | <!-- -->      |
|:-------------:|:---------------:|:-------------:|
| MODE_ONLINE_CHECK | ALWAYS (Immer) | Ein Abruf VSD wird ungeachtet eines vorangegangenen Abrufs immer angefordert |
| MODE_ONLINE_CHECK | FIRST (Quartal) | Ein online Abruf VSD wird nur beim ersten Kontakt im Quartal angefordert. Die Prüfung wird wiederholt, wenn der vorangegangene Abruf wegen technischer Probleme abgebrochen wurde |
| MODE_ONLINE_CHECK | USER (benutzerinteraktion) | Der Nutzer entscheidet individuell über die Durchführung eines Abrufs VSD. Falls das PS die Notwendigkeit einer Online-Prüfung festgestellt hat, sollte dies in Form einer Bestätigung erfolgen. |
