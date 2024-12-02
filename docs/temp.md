<img align="right" width="200" height="37" src="./images/Gematik_Logo_Flag.png"/> <br/>

# Specification VSDM 2 FHIR-Profiles and API

This repo holds FHIR-Profiles, sample Resources and OpenAPI specification for the VSDM 2 interface.

- [Specification VSDM 2 FHIR-Profiles and API](#specification-vsdm-2-fhir-profiles-and-api)
  - [What is VSDM 2](#what-is-vsdm-2)
  - [FHIR Profiles VSDM 2](#fhir-profiles-vsdm-2)
  - [API Documentation VSDM 2](#api-documentation-vsdm-2)
- [License](#license)
- [Contact](#contact)

## What is VSDM 2

The Versichertenstammdatenmanagement VSDM was introduced around 2017 and both provides patient demographic data to healthcare professionals and proof of treatment to be used in quarterly statements to the KV. All these use cases make use of Konnektor, eHealth Card Terminals, eGK, SMC-B, Intermediär and finally the insurant provider's VSDM backend services.

- VSDM 2 firstly decouples the proof-of-treatment ("Proof-of-Patient-Presence PoPP) from the use case of providing demographic data. So the PoPP can be used in other applications, too.
- Secondly, all the named infrastructure-components formed an inflexible and time-consuming use case environment. So VSDM 2 reduces dependencies to those components.
- Finally, with the TI 2.0 initiative, the whole infrastructure will get modernized and updated to state-of-the-art security and architecture principles.

VSDM 2 basically will become a simple application, where a healthcare professional can (and in most cases should) get demographic and additional billing information AFTER a PoPP was determined. So the insurant providers provide a simple FHIR-REST-API where doctor's office client software "just" requests additional data by providing a legitimate PoPP-token.

![image](images/diagrams/SequenceDiagram.VSDM2.read_concept.png)

## FHIR Profiles VSDM 2

The first VSDM used a proprietary XML data format in a SOAP-service-chain. VSDM 2 migrates to the FHIR-standard that is used more and more in the German healthcare sector. The FHIR-profiles and sample resources will be published in the official [VSDM 2 simplifier project](https://simplifier.net/vsdm2).

## API Documentation VSDM 2

As stated above, the VSDM 2 will be reduced to the use of a small RESTful FHIR-API, that is documented here [vsdm2.yaml](./src/openapi/vsdm2.yaml).

# License

See [LICENSE](/LICENSE)

# Contact

Please refer to <https://www.gematik.de> or <OSPO@gematik.de>
