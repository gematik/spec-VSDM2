// ================================================================================================
//
//   CodeSystem (Präfix $cs...), für externe CS auch mit zugehöriger Version.
//   Da für die Versionen kein Alias verwendet werden kann, werden sie grundsätzlich mit dem
//   Kommentar // Version($cs...) versehen, damit man sie leichter suchen und ersetzen kann.
//   Achtung: Die Version kann auch als $csXXX|1.2.3#Wert "Display" auftauchen!
//

// DEÜV Anlage 6 (Vorsatzworte), verwendet für
//   - VSDMVorsatzwortVS
//     - VSDMPatient.name[Name].family.extension[vorsatzwort]
Alias: $csAnlage6Vorsatzworte = http://fhir.de/CodeSystem/deuev/anlage-6-vorsatzworte // "2.30" // Version($csAnlage6Vorsatzworte)

// DEÜV Anlage 7 (Namenszusätze), verwendet für
//   - VSDMNamenszusatzVS
//     - VSDMPatient.name[Name].family.extension[namenszusatz]
Alias: $csAnlage7Namenszusaetze = http://fhir.de/CodeSystem/deuev/anlage-7-namenszusaetze // "2.25" // Version($csAnlage7Namenszusaetze)

// DEÜV Anlage 8 (Länderkennzeichen), verwendet für
//   - VSDMPatient.address.country.extension[anlage8]
//   - VSDMPayorOrganization.address.country.extension[anlage8]
Alias: $csAnlage8Laenderkennzeichen = http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen // "8.00" // Version($csAnlage8Laenderkennzeichen)

// Contact entity type, verwendet für
//   - Beispiel für VSDMPayorOrganization
Alias: $csContactEntityType = http://terminology.hl7.org/CodeSystem/contactentity-type

// Contact Point System, verwendet für
//   - VSDMContactPointTIM
Alias: $csContactPointSystem = http://hl7.org/fhir/contact-point-system

// Länderkennzeichen nach ISO 3166-1-2, verwendet für
//   - Beispiel für VSDMPatient
//   - Beispiel für VSDMPayorOrganization
Alias: $csCountryCodeISO3166 = urn:iso:std:iso:3166

// DMP-Schlüssel, verwendet für
//   - VSDMDMPVS
//     - VSDMDMPTeilnahme
//       - VSDMCoverageGKV.extension[dmp]
Alias: $csDMP = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DMP // "1.07" // Version($csDMP)
// ACHTUNG: Hier wird die Vorab-Version aus kbv.all.st-rc verwendet, die noch als "draft" gekennzeichnet ist, weil nur dort der Code 13 hinterlegt ist.
// Das Verfahren bzw. die Statusangabe ist aktuell noch in Klärung mit der KBV.

// administrative Geschlechtsangabe, verwendet für
//   - Beispiel für VSDMPatient
Alias: $csGenderAmtlich = http://fhir.de/CodeSystem/gender-amtlich-de // "1.6.0" // Version($csGenderAmtlich)

// Schweregrad einer Meldung, verwendet für
//   - ConceptMap VSDMErrorcodeIssueSeverity
Alias: $csIssueSeverity = http://hl7.org/fhir/issue-severity

// Typ einer Meldung, verwendet für
//   - ConceptMap VSDMErrorcodeIssueType
Alias: $csIssueType = http://hl7.org/fhir/issue-type

// LOINC, verwendet für
//   - VSDMComposition.type.coding
Alias: $csLOINC = http://loinc.org

// Operation Outcome Codes, verwendet für
//   - VSDMErrorcodeVS
//     - VSDMOperationOutcome.issue[vsdm-error].details.coding
Alias: $csOperationOutcomeCodes = http://terminology.hl7.org/CodeSystem/operation-outcome

// PKV-Tarifart, verwendet für
//   - VSDMTarifartPKV
//     - VSDMCoveragePKV.extension[tarifart]
Alias: $csTarifartPKV = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PKV_TARIFF // "1.01" // Version($csTarifartPKV)

// besondere Personengruppe, verwendet für
//   - VSDMBesonderePersonengruppeVS
//     - VSDMCoverageGKV.extension[besonderePersonengruppe]
Alias: $csPersonengruppe = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PERSONENGRUPPE // "1.03" // Version($csPersonengruppe)

// Art des ruhenden Leistungsanspruchs, verwendet für
//   - VSDMCoverageGKV
Alias: $csRuhenderLeistungsanspruch = http://fhir.de/CodeSystem/gkv/RuhenderLeistungsanspruchGKV // "1.6.0" // Version($csRuhenderLeistungsanspruchArt)

// SNOMED Clinical Terms, verwendet für
//   - VSDMDMPVS
Alias: $csSCT = http://snomed.info/sct

// Versichertenstatus / Versichertenart, verwendet für
//   - VSDMCoverageGKV
Alias: $csVersichertenartGKV = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS // "1.02" // Version($csVersichertenartGKV)

// Versichertenstatus / Versichertenart, verwendet für
//   - VSDMCoveragePKV
Alias: $csVersichertenartPKV = http://fhir.de/CodeSystem/pkv/Versichertenart // "1.6.0" // Version($csVersichertenartPKV)

// Versicherungsart, verwendet für:
//   - Beispiel für VSDMCoverageGKV
Alias: $csVersicherungsart = http://fhir.de/CodeSystem/versicherungsart-de-basis // "1.6.0" // Version($csVersicherungsart)

// Wohnortprinzip, verwendet für
//   - VSDMWohnortprinzipVS
//     - VSDMCoverageGKV.extension[wop]
Alias: $csWOP = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ITA_WOP // "1.00" // Version($csWOP)

// ================================================================================================
//
//   ValueSet (Präfix $vs...)
//

// DEÜV Anlage 8 (Länderkennzeichen), verwendet für
//   - VSDMPatient.address.country.extension[anlage8]
//   - VSDMPayorOrganization.address.country.extension[anlage8]
Alias: $vsAnlage8Laenderkennzeichen = https://fhir.kbv.de/ValueSet/KBV_VS_Base_Deuev_Anlage_8

// Länderkennzeichen nach ISO 3166-1-2, verwendet für
//   - VSDMPatient.address.country.extension[countryCode]
//   - VSDMPayorOrganization.address.country.extension[countryCode]
Alias: $vsCountryCodeISO3166 = http://hl7.org/fhir/ValueSet/iso3166-1-2

// Schweregrad einer Meldung, verwendet für
//   - ConceptMap VSDMErrorcodeIssueSeverity
Alias: $vsIssueSeverity = http://hl7.org/fhir/ValueSet/issue-severity

// Typ einer Meldung, verwendet für
//   - ConceptMap VSDMErrorcodeIssueType
Alias: $vsIssueType = http://hl7.org/fhir/ValueSet/issue-type

// besondere Personengruppe, verwendet für
//   - VSDMBesonderePersonengruppeVS
//     - VSDMCoverageGKV.extension[besonderePersonengruppe]
Alias: $vsPersonengruppe = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_PERSONENGRUPPE

// Art des ruhenden Leistungsanspruchs, verwendet für
//   - VSDMCoverageGKV
Alias: $vsRuhenderLeistungsanspruch = http://fhir.de/ValueSet/gkv/RuhenderLeistungsanspruchGKV

// PKV-Tarifart, verwendet für
//   - VSDMTarifartPKV
//     - VSDMCoveragePKV.extension[tarifart]
Alias: $vsTarifartPKV = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_PKV_TARIFF

// Versichertenstatus / Versichertenart, verwendet für
//   - Beispiel für VSDMCoverageGKV
Alias: $vsVersichertenartGKV = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_VERSICHERTENSTATUS

// Versichertenstatus / Versichertenart, verwendet für
//   - VSDMCoveragePKV
Alias: $vsVersichertenartPKV = http://fhir.de/ValueSet/pkv/Versichertenart

// ================================================================================================
//
//   StructureDefinition: Extensions (Präfix $ext...)
//

// besondere Personengruppe (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverageGKV.extension[besonderePersonengruppe]
Alias: $extBesonderePersonengruppe = http://fhir.de/StructureDefinition/gkv/besondere-personengruppe

// Kostenerstattung (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverageGKV.extension[kostenerstattung]
Alias: $extKostenerstattung = http://fhir.de/StructureDefinition/gkv/kostenerstattung

// ruhender Leistungsanspruch (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverageGKV.extension[ruhenderLeistungsanspruch]
Alias: $extRuhenderLeistungsanspruch = http://fhir.de/StructureDefinition/gkv/ruhender-leistungsanspruch

// coded expression for the content represented in a string
// verwendet für die Länderangaben nach ISO 3166-1 bzw. Anlage 8 DEÜV
Alias: $extCodedString = http://hl7.org/fhir/StructureDefinition/iso21090-codedString

// Versichertenart (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverageGKV.extension[versichertenart]
Alias: $extVersichertenart = http://fhir.de/StructureDefinition/gkv/versichertenart

// Wohnortprinzip (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverageGKV.extension[wop]
Alias: $extWOP = http://fhir.de/StructureDefinition/gkv/wop

// Zuzahlungsstatus (Extension aus dem deutschen Basisprofil), verwendet für
//   - VSDMCoverageGKV.extension[zuzahlungsstatus]
Alias: $extZuzahlungsstatus = http://fhir.de/StructureDefinition/gkv/zuzahlungsstatus
