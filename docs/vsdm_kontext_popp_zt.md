# VSDM 2.0 im Kontext PoPP und ZeroTrust

**Überblick Zusammenspiel der Anwendungen**

![Alt-Text](/images/Systemüberblick_V_P_Z.png)

VSDM 2.0 setzt voraus, dass der Versorgungskontext für einen zu behandelnden Versicherten in Form eines PoPP-Tokens vom Primärsystem via PoPP-Client und PoPP-Service bezogen wurde, um den Anwendungsfall zum Abruf der VSD durchführen zu können.

Proof of Patient Presence (PoPP) ist ein Nachweis, der belegt, dass sich ein Versicherter zu einem bestimmten Zeitpunkt in einem Versorgungskontext mit einer bestimmten Leistungserbringerinstitution (LEI) befindet. Im kryptografisch gesicherten PoPP-Token sind somit Informationen über die LEI und über den Versicherten zusammengeführt. Dabei ist es die Aufgabe der PoPP-Lösung, die Authentifizierung der LEI durchzuführen und durch Authentifizierung des Versicherten per GesundheitsID oder Authentifizierung der elektronischen Gesundheitskarte (eGK) eines Versicherten, an einem eHealth-Kartenterminal oder handelsüblichen USB Smartcard-Reader, den Versorgungskontext zu bestätigen. Das Ergebnis ist das PoPP-Token, welches der LEI zur Autorisierung für den Zugriff auf die Daten des Versicherten in Diensten der Telematikinfrastruktur (TI) dient.

Der http Proxy des ZETA Guards stellt sicher, dass nur Requests mit gültigem Access Token sowie bestandenen zusätzlichen Prüfungen an den Ressource Server weitergeleitet werden. Welche Prüfungen zusätzlich erfolgen, wird über Attribute im Access Token gesteuert.
