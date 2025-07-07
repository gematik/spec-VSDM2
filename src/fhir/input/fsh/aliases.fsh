// ================================================================================================
// 
//   CodeSystem (Präfix $cs...)
//

// DEÜV Anlage 6 (Vorsatzworte), verwendet für
//   - VSDMVorsatzwortVS
//     - VSDMPatient.name[Name].family.extension[vorsatzwort]
Alias: $csAnlage6Vorsatzworte = http://fhir.de/CodeSystem/deuev/anlage-6-vorsatzworte

// DEÜV Anlage 7 (Namenszusätze), verwendet für
//   - VSDMNamenszusatzVS
//     - VSDMPatient.name[Name].family.extension[namenszusatz]
Alias: $csAnlage7Namenszusaetze = http://fhir.de/CodeSystem/deuev/anlage-7-namenszusaetze

// DEÜV Anlage 8 (Länderkennzeichen), verwendet für
//   - VSDMLaenderkennzeichen (Extension)
//     - VSDMPatient.address.country.extension[Laenderkennzeichen]
//     - VSDMPayorOrganization.address.country.extension[Laenderkennzeichen]
Alias: $csAnlage8Laenderkennzeichen = http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen

// Contact entity type, verwendet für
//   - Beispiel für VSDMPayorOrganization
Alias: $csContactEntityType = http://terminology.hl7.org/CodeSystem/contactentity-type

// Länderkennzeichen nach ISO 3166-1-2, verwendet für
//   - Beispiel für VSDMPatient
//   - Beispiel für VSDMPayorOrganization
Alias: $csCountryCodeISO3166 = http://hl7.org/fhir/CodeSystem/iso3166-1-2

// DMP-Schlüssel, verwendet für
//   - VSDMDMPVS
//     - VSDMDMPTeilnahme
//       - VSDMCoverage
Alias: $csDMP = http://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DMP

// LOINC, verwendet für 
//   - VSDMComposition.type.coding
Alias: $csLOINC = http://loinc.org

// Operation Outcome Codes, verwendet für
//   - VSDMErrorcodeVS
//     - VSDMOperationOutcome.issue[vsdm-error].details.coding
Alias: $csOperationOutcomeCodes = http://terminology.hl7.org/CodeSystem/operation-outcome

// Organization type, verwendet für
//   - VSDMPayorOrganization.type
Alias: $csOrganizationType = http://terminology.hl7.org/CodeSystem/organization-type

// besondere Personengruppe, verwendet für
//   - Beispiel für VSDMCoverage
Alias: $csPersonengruppe = http://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PERSONENGRUPPE

// Versichertenstatus / Versichertenart, verwendet für
//   - Beispiel für VSDMCoverage
Alias: $csVersichertenart = http://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS

// Wohnortprinzip, verwendet für
//   - VSDMWohnortprinzipVS
//     - VSDMCoverage.extension[wop]
Alias: $csWOP = http://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ITA_WOP

// ================================================================================================
// 
//   ValueSet (Präfix $vs...)
//

// DEÜV Anlage 8 (Länderkennzeichen), verwendet für
//   - VSDMLaenderkennzeichen (Extension)
//     - VSDMPatient.address.country.extension[Laenderkennzeichen]
//     - VSDMPayorOrganization.address.country.extension[Laenderkennzeichen]
Alias: $vsAnlage8Laenderkennzeichen = https://fhir.kbv.de/ValueSet/KBV_VS_Base_Deuev_Anlage_8

// DMP-Schlüssel, verwendet für
//   - VSDMDMPTeilnahme
//     - VSDMCoverage
Alias: $vsDMP = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_DMP

// ================================================================================================
// 
//   StructureDefinition: Extensions (Präfix $ext...)
//

// besondere Personengruppe (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverage.extension[besonderePersonengruppe]
Alias: $extBesonderePersonengruppe = http://fhir.de/StructureDefinition/gkv/besondere-personengruppe

// Kostenerstattung (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverage.extension[kostenerstattung]
Alias: $extKostenerstattung = http://fhir.de/StructureDefinition/gkv/kostenerstattung

// ruhender Leistungsanspruch (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverage.extension[ruhenderLeistungsanspruch]
Alias: $extRuhenderLeistungsanspruch = http://fhir.de/StructureDefinition/gkv/ruhender-leistungsanspruch

// Versichertenart (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverage.extension[versichertenart]
Alias: $extVersichertenart = http://fhir.de/StructureDefinition/gkv/versichertenart

// Wohnortprinzip (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverage.extension[wop]
Alias: $extWOP = http://fhir.de/StructureDefinition/gkv/wop

// Zuzahlungsstatus (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverage.extension[zuzahlungsstatus]
Alias: $extZuzahlungsstatus = http://fhir.de/StructureDefinition/gkv/zuzahlungsstatus
