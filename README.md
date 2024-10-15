<img align="right" width="200" height="37" src="./images/Gematik_Logo_Flag.png"/> <br/>

# Spezifikation VSDM 2.0 FHIR-Profile und API

## Einleitung
Die gematik geht neue Wege und möchte auf diesem Weg die Nutzung der Schnittstellen rund um das VSDM 2.0 vorstellen. Die Beschreibung dieser API ergänzt die normativen Dokumente der gematik sowie die Festlegungen über die VSDM-Profile (inkl. Beispielen) des genutzten FHIR-Standards.

Auf den folgenden Seiten stellt die gematik die Nutzung der Schnittstellen durch die Primärsysteme der Leistungserbringer vor.

## Was ist VSDM 2.0

VSDM steht für „Versichertenstammdatenmanagement“. Es ist ein Teil der Telematikinfrastruktur (TI) im deutschen Gesundheitswesen und dient der Verwaltung und dem Abgleich der Stammdaten von gesetzlich versicherten Personen.
VSDM 2.0 ist die Weiterentwicklung des bestehenden VSDM 1.0. Die Versichertenstammdaten (VSD) werden mit VSDM 2.0 nicht mehr auf der eGK des Versicherten gespeichert und aktualisiert sondern direkt vom Primärsystem (PS) des Leistungserbringers vom Fachdienst der Krankenkasse abgerufen und ggf. im PS aktualisiert.
Während bei VSDM 1.0 in den Anwendungsfällen die Komponenten Konnektor, eHealth Card Terminals, eGK, SMC-B, Intermediär und schließlich die VSDM-Backend-Dienste des Versicherers zum Einsatz kommen reduziert VSDM 2.0 die Abhängigkeiten von diesen Komponenten. 
Mit der Initiative TI 2.0 wird die gesamte Infrastruktur modernisiert und auf den neuesten Stand der Sicherheits- und Architekturprinzipien gebracht.

VSDM 2.0 entkoppelt den Versorgungsnachweis („Proof-of-Patient-Presence PoPP“) vom Anwendungsfall der Bereitstellung demografischer Daten. Damit kann der PoPP auch in anderen Anwendungen eingesetzt werden.
Die Versicherer stellen also eine einfache FHIR-REST-API bereit, mit der die Client-Software der Arztpraxis „nur“ zusätzliche Daten anfordert, indem sie ein legitimes PoPP-Token bereitstellt.


**Funktionen des VSDM:**
- **Stammdatenabgleich:** Über das VSDM werden die Versichertenstammdaten, wie Name, Geburtsdatum, Anschrift, und Versicherungsschutz, bei jedem Arztbesuch abgerufen und ggf.  aktualisiert.
- **Sicherstellung der Aktualität:** Es soll sichergestellt werden, dass die im Primärsystem gespeicherten Daten stets aktuell sind.
- **Datensicherheit:** Die Daten werden verschlüsselt und sicher über die Telematikinfrastruktur übertragen.

## Anwendungsszenarien
Hier finden Sie eine Informationsseite zu Anwendungsszenarien in den verschiedenen Sektoren

[VSDM Prozesse in den Sektoren](docs/vsdm_prozesssicht.md)

## Implementierungsunterstützung
Hier geht es zur Informationsseite zur Implementierungsunterstützung bezüglich FHIR und allgemeiner Hinweise  



[VSDM FHIR Ressourcen](docs/vsdm_fhir_infos.md)

[Allgemeine Implementierungshinweise](docs/vsdm_implementierungshiweise.md)

[Benutzerinteraktionen](docs/vsdm_benutzerinteraktionen.md)

[Support bei der Implementierung](docs/vsdm_support.md)


## Anwendungsfälle in VSDM 2.0
In den nachfolgend verlinkten Abschnitten zeigen wir die Anwendungsfälle im VSDM 2.0 Kontext auf  
### Allgemein
|Dokumentation<img width="430" height="1">| Zielgruppe<img width="70" height="1"> |
|-----|------------|
|[Fehlerbehandlung](docs/vsdm_statuscodes.md)|![][PVS] ![][AVS]|

### Anwendungsfälle Abruf VSD
|Dokumentation<img width="430" height="1">| Zielgruppe<img width="70" height="1"> |
|-----|------------|
|[VSD über PS abrufen](docs/vsdm_anwendungsfaelle.md)|![][PVS] ![][AVS]|





## Branch Modell
In diesem Repository werden Branches verwendet um den Status der Weiterentwicklung und das Review von Änderungen abzubilden.
Folgende Branches werden verwendet

- main (enthält den letzten freigegebenen Stand der Entwicklung; besteht permanent)

- develop (enthält den Stand der fertig entwickelten Features und wird zum Review durch Industriepartner und Gesellschafter verwendet; basiert auf main; nach Freigabe erfolgt ein merge in main und ein Release wird erzeugt; besteht permanent)

- feature/<name> (in feature branches werden neue Features entwickelt; basiert auf develop; nach Fertigstellung erfolgt ein merge in develop; wird nach dem merge gelöscht)

## Lizenzbedingungen
Copyright (c) 2022 gematik GmbH

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

## FHIR Profile VSDM 2.0

In VSDM 1.0 wurde ein proprietäres XML-Datenformat in einer SOAP-Servicekette verwendet. Mit VSDM 2.0 wird der VSD Datensatz in den FHIR-Standard migriert, der im deutschen Gesundheitswesen immer mehr zum Einsatz kommt. Die FHIR-Profile und Beispielressourcen werden im offiziellen [VSDM 2 simplifier project](https://simplifier.net/vsdm2) veröffentlicht.

## API Dokumentation VSDM 2.0

Wie oben erwähnt, wird das VSDM 2.0 auf die Verwendung einer RESTful FHIR-API reduziert, die hier dokumentiert ist [vsdm2.yaml](./src/openapi/vsdm2.yaml).

Eine gute API-Dokumentation sollte umfassend und klar strukturiert sein, um Entwicklern die Nutzung der API so einfach wie möglich zu machen. Hier sind die wichtigsten Elemente, die eine gute API-Dokumentation enthalten sollte:
1. Einführung
Zweck der API: Eine kurze Erklärung, was die API tut und welche Probleme sie löst.
Zielgruppe: Wer sollte diese API nutzen? Welche technischen Vorkenntnisse werden erwartet?
Voraussetzungen: Informationen über benötigte Tools, Bibliotheken oder SDKs.
2. Authentifizierung und Autorisierung
API-Schlüssel oder Token: Wie erhält der Nutzer einen API-Schlüssel oder ein Authentifizierungstoken?
Autorisierungsverfahren: Beschreibung der verwendeten Authentifizierungsmethoden (z.B. OAuth, Basic Auth).
Beispiele: Beispielanfragen für die Authentifizierung.
3. Basis-URL und Endpunkte
Basis-URL: Die grundlegende URL, von der alle API-Aufrufe ausgehen.
Endpunkte: Detaillierte Beschreibung aller verfügbaren Endpunkte, einschließlich:
HTTP-Methode: GET, POST, PUT, DELETE, etc.
Pfadparameter: Parameter, die in der URL enthalten sind.
Query-Parameter: Parameter, die in der URL als Abfrage angehängt werden.
Body-Parameter: Parameter, die im Body einer Anfrage gesendet werden.
4. Antworten und Statuscodes
Beispielantworten: JSON-, XML- oder andere Formatbeispiele der API-Antworten.
Statuscodes: Liste der möglichen HTTP-Statuscodes mit Erklärungen (z.B. 200 OK, 404 Not Found, 500 Internal Server Error).
Fehlermeldungen: Beschreibung der möglichen Fehler und wie sie zu beheben sind.
5. Beispiele für Anfragen und Antworten
Codebeispiele: Beispielcode in verschiedenen Programmiersprachen (z.B. Python, JavaScript, Curl), um die API-Aufrufe zu demonstrieren.
Erwartete Antworten: Darstellung der typischen API-Antworten für die gegebenen Anfragen.
6. Datenstrukturen und Modelle
Datenformate: Erklärung der verwendeten Datenformate (z.B. JSON, XML).
Datenmodelle: Beschreibung der verwendeten Datenmodelle, inklusive aller Felder und Datentypen.
Beziehungen: Erklärung von Beziehungen zwischen verschiedenen Datenmodellen, falls zutreffend.
7. Rate Limits und Einschränkungen
Rate Limits: Informationen über die Anzahl der erlaubten Anfragen pro Zeiteinheit.
Nutzungseinschränkungen: Informationen über eventuelle Einschränkungen der API-Nutzung, wie z.B. die maximale Größe von Anfragen.
8. Versionierung
API-Versionierung: Hinweise darauf, wie Versionen der API verwaltet werden und wie Benutzer zwischen verschiedenen Versionen wechseln können.
Änderungsprotokoll: Ein Changelog, das alle wichtigen Änderungen und Updates dokumentiert.
9. Support und Kontaktinformationen
Hilfe: Informationen darüber, wo und wie Benutzer Unterstützung erhalten können (z.B. Forum, E-Mail-Support).
Fehlerberichterstattung: Wie können Nutzer Bugs melden oder Feature-Anfragen stellen?
10. FAQs und Troubleshooting
Häufige Fragen: Antworten auf häufige Fragen zur Nutzung der API.
Fehlerbehebung: Leitfaden zur Behebung häufiger Probleme.
11. Interaktive Dokumentation (optional)
Swagger/OpenAPI: Ein interaktives Interface, mit dem Entwickler API-Endpunkte direkt aus der Dokumentation heraus testen können.
API-Sandbox: Eine Testumgebung, in der Entwickler sicher mit der API experimentieren können.
Eine gut strukturierte API-Dokumentation erleichtert es Entwicklern, die API effizient zu nutzen, und trägt dazu bei, häufige Fragen und Probleme zu minimieren.


# Kontakt

Gehen Sie zu <https://www.gematik.de> oder <OSPO@gematik.de>
