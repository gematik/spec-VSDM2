<img align="right" width="200" height="37" src="./images/Gematik_Logo_Flag.png"/> <br/>

# Spezifikation VSDM 2.0 FHIR-Profiles und API

Dieses Dokument enthält FHIR-Profile, Beispielressourcen und OpenAPI-Spezifikationen für die VSDM 2.0-Schnittstelle.



## Was ist VSDM 2.0

VSDM steht für „Versichertenstammdatenmanagement“. Es ist ein Teil der Telematikinfrastruktur (TI) im deutschen Gesundheitswesen und dient der Verwaltung und dem Abgleich der Stammdaten von gesetzlich versicherten Personen.
VSDM 2.0 ist die Weiterentwicklung des bestehenden VSDM 1.0. Die Versichertenstammdaten (VSD) werden mit VSDM 2.0 nicht mehr auf der eGK des Versicherten gespeichert und aktualisiert sondern direkt vom Primärsystem (PS) des Leistungserbringers vom Fachdienst der Krankenkasse abgerufen und ggf. im PS aktualisiert.
Während bei VSDM 1.0 in den Anwendungsfällen die Komponenten Konnektor, eHealth Card Terminals, eGK, SMC-B, Intermediär und schließlich die VSDM-Backend-Dienste des Versicherers zum Einsatz kommen reduziert VSDM 2.0 die Abhängigkeiten von diesen Komponenten. 
Mit der Initiative TI 2.0 wird die gesamte Infrastruktur modernisiert und auf den neuesten Stand der Sicherheits- und Architekturprinzipien gebracht.

VSDM 2.0 entkoppelt den Versorgungsnachweis („Proof-of-Patient-Presence PoPP“) vom Anwendungsfall der Bereitstellung demografischer Daten. Damit kann der PoPP auch in anderen Anwendungen eingesetzt werden.
Die Versicherer stellen also eine einfache FHIR-REST-API bereit, mit der die Client-Software der Arztpraxis „nur“ zusätzliche Daten anfordert, indem sie ein legitimes PoPP-Token bereitstellt.


**Funktionen des VSDM:**
- **Stammdatenabgleich:** Über das VSDM werden die Versichertenstammdaten, wie Name, Geburtsdatum, Anschrift, und Versicherungsschutz, bei jedem Arztbesuch elektronisch überprüft und aktualisiert.
- **Sicherstellung der Aktualität:** Es soll sichergestellt werden, dass die auf der elektronischen Gesundheitskarte (eGK) gespeicherten Daten stets aktuell sind.
- **Datensicherheit:** Die Daten werden verschlüsselt und sicher über die Telematikinfrastruktur übertragen.

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

## FHIR Profiles VSDM 2

The first VSDM used a proprietary XML data format in a SOAP-service-chain. VSDM 2 migrates to the FHIR-standard that is used more and more in the German healthcare sector. The FHIR-profiles and sample resources will be published in the official [VSDM 2 simplifier project](https://simplifier.net/vsdm2).

## API Documentation VSDM 2

As stated above, the VSDM 2 will be reduced to the use of a small RESTful FHIR-API, that is documented here [vsdm2.yaml](./src/openapi/vsdm2.yaml).


# Contact

Please refer to <https://www.gematik.de> or <OSPO@gematik.de>
