# VSDM 2.0 im Kontext PoPP und ZeroTrust

**Überblick Zusammenspiel der Anwendungen**

![Alt-Text](/images/VSDMPoPPZT.png)

VSDM 2.0 setzt voraus, dass der Versorgungskontext für einen zu behandelnden Versicherten in Form eines PoPP-Tokens vom Primärsystem via PoPP-Client und PoPP-Service bezogen wurde, um den Anwendungsfall zum Abruf der VSD durchführen zu können.

Der PoPP-Client, als logische Komponente eines Clients der TI und der TI-Plattformleistung Proof of Patient Presence, bündelt die Kommunikation und Abläufe zwischen Primärsystem und PoPP-Service. Darüber hinaus steuert der PoPP-Client die Authentisierung des Versicherten mit der eGK an einem eHealth-Kartenterminal oder handelsüblichen Smartcard-Reader gegenüber dem PoPP-Service.
