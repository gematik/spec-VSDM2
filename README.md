<img align="right" width="200" height="37" src="./images/Gematik_Logo_Flag.png"/> <br/>

# Spezifikation VSDM 2.0 FHIR-Profile und API

## Disclaimer
Dieses Dokument beschreibt die für die Implementierung des Versicherungsstammdatenmanagements (VSDM) 2.0 erforderlichen Vorgaben. Weitere Vorgaben zur Implementierung der Anteile von PoPP und Zero Trust sind zum Stand der Veröffentlichung von VSDM 2.0 nicht Bestandteil dieses Dokuments. Die Aufnahme der Implementierungsvorgaben aus PoPP und Zero Trust in den ILF für VSDM 2.0 erfolgt iterativ sobald die notwendigen Informationen aus diesen Implementierungsleitfäden vorliegen.

Die in "gemSpecVSDM_2" enthaltenen und in den Steckbrief "gemSST_CS_VSDM_2" ausgeleiteten Anforderungen an Clientsysteme haben informativen Charakter und treffen Festlegungen über diesen Implementierungsleitfaden hinaus. Die Anforderungen dienen zur Unterstützung der Implementierung durch Primärsystemhersteller.

## Einleitung
Die gematik geht neue Wege und möchte auf diesem Weg die Nutzung der Schnittstellen rund um das VSDM 2.0 vorstellen. Die Beschreibung dieser API ergänzt die normativen Dokumente der gematik sowie die Festlegungen über die VSDM-Profile (inkl. Beispielen) des genutzten FHIR-Standards.

Auf den folgenden Seiten stellt die gematik die Nutzung der Schnittstellen durch die Primärsysteme der Leistungserbringer vor.

## Was ist VSDM 2.0

VSDM steht für „Versichertenstammdatenmanagement“. Es ist ein Teil der Telematikinfrastruktur (TI) im deutschen Gesundheitswesen und dient der Verwaltung und dem Abgleich der Stammdaten von gesetzlich versicherten Personen.
VSDM 2.0 ist die Weiterentwicklung des bestehenden VSDM 1.0. Die Versichertenstammdaten (VSD) werden mit VSDM 2.0 nicht mehr auf der eGK des Versicherten gespeichert und aktualisiert sondern direkt vom Primärsystem (PS) des Leistungserbringers vom Fachdienst der Krankenkasse abgerufen und ggf. im PS aktualisiert.
Während bei VSDM 1.0 in den Anwendungsfällen die Komponenten Konnektor, eHealth Kartenterminals, eGK, SMC-B, Intermediär und schließlich die VSDM-Backend-Dienste des Versicherers zum Einsatz kommen, reduziert VSDM 2.0 die Abhängigkeiten von diesen Komponenten. 
Mit der Initiative TI 2.0 wird die gesamte Infrastruktur modernisiert und auf den neuesten Stand der Sicherheits- und Architekturprinzipien gebracht.

VSDM 2.0 entkoppelt den Versorgungsnachweis („Proof-of-Patient-Presence PoPP“) vom Anwendungsfall der Bereitstellung demografischer Daten. Damit kann der PoPP auch in anderen Anwendungen eingesetzt werden.
Die Versicherer stellen also eine einfache FHIR-REST-API bereit, mit der die Client-Software der Arztpraxis „nur“ zusätzliche Daten anfordert, indem sie ein legitimes PoPP-Token bereitstellt.

Im nachfolgend verlinkten Kapitel finden Sie eine Übersicht, in welchem Kontext VSDM, PoPP und Zero Trust zueinander stehen:

[Kontext VSDM/PoPP/ZeroTrust](docs/vsdm_kontext_popp_zt.md)


**Funktionen des VSDM:**
- **Stammdatenabgleich:** Über das VSDM 2.0 werden die Versichertenstammdaten, wie Name, Geburtsdatum, Anschrift, und Versicherungsschutz, bei jedem Arztbesuch online abgerufen und ggf.  aktualisiert.
- **Sicherstellung der Aktualität:** Es soll sichergestellt werden, dass die im Primärsystem gespeicherten Daten stets aktuell sind.
- **Datensicherheit:** Die Daten werden verschlüsselt und sicher über die Telematikinfrastruktur übertragen.

## Anwendungsszenarien
In diesem Kapitel finden Sie eine Beschreibung der für VSDM 2.0 relevanten Sektoren des Gesundheitswesens.

[Anwendungsszenarien](docs/vsdm_anwendungsszenarien.md)

## Anwendungsfälle in VSDM 2.0
Im nachfolgend verlinkten Kapitel finden Sie die Übersicht der Anwendungsfälle im Kontext VSDM 2.0.

[Anwendungsfälle](docs/vsdm_anwendungsfaelle.md)

## Abläufe im Primärsystem
Im Rahmen der Anwendungsfälle finden im Primärsystem weitere Abläufe im Zusammenhang mit der Versorgung des Versicherten statt. Hier finden Sie Informationen zu den Abläufen im Primärsystem und Interaktionen des Primärsystems mit dem Nutzer.

[Abläufe](docs/vsdm_ablauf_ps.md)

[Primärsystem-Interaktionen](docs/vsdm_psinteraktionen.md)


## Informationsmodell VSD
Hier geht es zur Informationsseite zum neuen Informationsmodell für VSDM 2.0.

**Anmerkung: Die Festlegung der finalen Inhalte des Informationsmodells erfolgt im Rahmen der Fortschreibung dieser Spezifikation. Die in diesem Dokument dargestellten Informationen stellen somit lediglich den bis zum Zeitpunkt der Veröffentlichung abgestimmten Stand dar.**

[Informationsmodell](docs/vsdm_informationsmodell.md)

## Prüfziffer
Hier finden Sie Informationen zur Prüfziffer für VSDM 2.0.

[Prüfziffer](docs/vsdm_pruefziffer.md) 

## Fehlerbehandlung

Hier geht es zur Informationsseite zum Umgang mit Fehlermeldungen

[Fehlermeldungen](docs/vsdm_errorcodes.md)

Hier geht es zur Informationsseite zu Statuscodes 

[Statuscodes](docs/vsdm_statuscodes.md)


## FHIR Profile VSDM 2.0

In VSDM 1.0 wurde ein proprietäres XML-Datenformat in einer SOAP-Servicekette verwendet. Mit VSDM 2.0 wird der VSD Datensatz in den FHIR-Standard migriert, der im deutschen Gesundheitswesen immer mehr zum Einsatz kommt. Die FHIR-Profile und Beispielressourcen werden im offiziellen [VSDM 2 simplifier project](https://simplifier.net/vsdm2) veröffentlicht.

## Mitgeltende Dokumente und Informationen
Hier finden Sie eine Übersicht zu den weiterführenden Dokumenten zur Implementierung.

- [Spezifikation VSDM 2.0](https://gemspec.gematik.de/prereleases/Draft_ZeroTrust_VSDM2_24_1/gemSpec_VSDM_2_V1.0.0_CC/)
- [FHIR-Profile VSDM 2.0](https://simplifier.net/vsdm2)


## Branch Modell
In diesem Repository werden Branches verwendet um den Status der Weiterentwicklung und das Review von Änderungen abzubilden.
Folgende Branches werden verwendet

- main (enthält den letzten freigegebenen Stand der Entwicklung; besteht permanent)

- develop (enthält den Stand der fertig entwickelten Features und wird zum Review durch Industriepartner und Gesellschafter verwendet; basiert auf main; nach Freigabe erfolgt ein merge in main und ein Release wird erzeugt; besteht permanent)

- feature/ilf (in feature branches werden neue Features entwickelt (ggf. basierend auf develop); nach Fertigstellung erfolgt ein merge in develop; der feature branch wird nach dem merge gelöscht)

## Lizenzbedingungen
Copyright (c) 2022 gematik GmbH

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.



## API Dokumentation VSDM 2.0

Wie oben erwähnt, wird das VSDM 2.0 auf die Verwendung einer RESTful FHIR-API reduziert, die hier dokumentiert ist [vsdm2.yaml](./src/openapi/vsdm2.yaml).


# Kontakt

Gehen Sie zu <https://www.gematik.de> oder <OSPO@gematik.de>
