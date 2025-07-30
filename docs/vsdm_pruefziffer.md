# Hinweise zur Prüfziffer

Im Gegensatz zu VSDM 1.0 wird mit VSDM 2.0 vom Fachdienst kein Prüfungsnachweis mehr sondern die Prüfziffer an das Primärsystem übergeben. 

Bei einer erfolgreichen Durchführung einer VSD-Anfrage wird 
  - bei erstmaligem Abruf im laufenden Quartal und
  - bei jedem weiteren Abruf der VSD im laufenden Quartal
    
die Prüfziffer unabhängig davon, ob sich Änderungen in den VSD ergeben haben an das Primärsystem übermittelt.

Das Primärsystem muss die Prüfziffer zur Erstellung der Abrechnungsunterlagen speichern. 

Dieser Leitfaden zur Implementierung trifft keine Aussage darüber, ob jede im laufenden Quartal erhaltene Prüfziffer gespeichert werden muss oder eine Überschreibung der vorhandenen Prüfziffer erfolgen soll. 

Die Regelungen dazu werden im Anforderungskatalog KVDT (KBV_ITA_VGEX_Anforderungskatalog_KVDT) getroffen und müssen durch das Primärsystem entsprechend umgesetzt werden.

Beispiele für Übertragung der Prüfziffer sind in [gemSpec_VSDM2] dargestellt und beschrieben.
















