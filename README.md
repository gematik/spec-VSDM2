<img align="right" width="200" height="37" src="./images/Gematik_Logo_Flag.png"/> <br/>

# Specification VSDM 2 FHIR-Profiles and API

This repo holds FHIR-Profiles, sample Resources and OpenAPI specification for the VSDM 2 interface.

- [Specification VSDM 2 FHIR-Profiles and API](#specification-vsdm-2-fhir-profiles-and-api)
  - [What is VSDM 2](#what-is-vsdm-2)
  - [FHIR Profiles VSDM 2](#fhir-profiles-vsdm-2)
  - [API Documentation VSDM 2](#api-documentation-vsdm-2)
- [License](#license)
- [Contact](#contact)

## Was ist VSDM 2.0

VSDM steht für „Versichertenstammdatenmanagement“. Es ist ein Teil der Telematikinfrastruktur (TI) im deutschen Gesundheitswesen und dient der Verwaltung und dem Abgleich der Stammdaten von gesetzlich versicherten Personen.
VSDM 2.0 ist die Weiterentwicklung des bestehenden VSDM 1.0. Die Versichertenstammdaten (VSD) werden mit VSDM 2.0 nicht mehr auf der eGK des Versicherten gespeichert und aktualisiert sondern direkt vom Primärsystem (PS) des Leistungserbringers vom Fachdienst der Krankenkasse abgerufen und ggf. im PS aktualisiert.

**Funktionen des VSDM:**
- Stammdatenabgleich: Über das VSDM werden die Versichertenstammdaten, wie Name, Geburtsdatum, Anschrift, und Versicherungsschutz, bei jedem Arztbesuch elektronisch überprüft und aktualisiert.
- Sicherstellung der Aktualität: Es soll sichergestellt werden, dass die auf der elektronischen Gesundheitskarte (eGK) gespeicherten Daten stets aktuell sind.
- Datensicherheit: Die Daten werden verschlüsselt und sicher über die Telematikinfrastruktur übertragen.

- VSDM 2 firstly decouples the proof-of-treatment ("Proof-of-Patient-Presence PoPP) from the use case of providing demographic data. So the PoPP can be used in other applications, too.
- Secondly, all the named infrastructure-components formed an unfexible and time consuming use case environment. So VSDM 2 reduces dependencies to those components.
- Finally, with the TI 2.0 initiative, the whole infrastructure will get modernized and updated to state of the art security and architecture principles.

VSDM 2 basically will become a simple application, where a healthcare professional can (and in most cases should) get demographic and additional billing information AFTER a PoPP was determined. So the insurant providers provide a simple FHIR-REST-API where doctor's office client software "just" requests additional data by providing a legitimate PoPP-token.


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

# License

See [LICENSE](/LICENSE)

# Contact

Please refer to <https://www.gematik.de> or <OSPO@gematik.de>
