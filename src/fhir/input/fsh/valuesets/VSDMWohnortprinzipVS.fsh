ValueSet: VSDMWohnortprinzipVS
Title: "Wohnortprinzip (WOP)"
Description: "Wohnortprinzip im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta

* include $csWOP#01 "Schleswig-Holstein"
* include $csWOP#02 "Hamburg"
* include $csWOP#03 "Bremen"
* include $csWOP#17 "Niedersachsen"
* include $csWOP#20 "Westfalen-Lippe"
* include $csWOP#38 "Nordrhein"
* include $csWOP#46 "Hessen"
* include $csWOP#51 "Rheinland-Pfalz"
* include $csWOP#52 "Baden-Württemberg"
* include $csWOP#71 "Bayern"
* include $csWOP#72 "Berlin"
* include $csWOP#73 "Saarland"
* include $csWOP#78 "Mecklenburg-Vorpommern"
* include $csWOP#83 "Brandenburg"
* include $csWOP#88 "Sachsen-Anhalt"
* include $csWOP#93 "Thüringen"
* include $csWOP#98 "Sachsen"

// Die folgenden Codes aus dem Ausgangs-CodeSystem https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_ITA_WOP sind in der BMV-Ä-Vorgabetabelle nicht enthalten. 

// Der folgende "Leerwert" ist für VSDM 2.0 nicht mehr notwendig.
// * include $csWOP#00 "Dummy bei eGK"

// Die folgenden Werte sind in der KVDT-Datensatzbeschreibung als "fusioniert, teilweise aber noch in Gebrauch (bspw. KVK-WOP)" markiert.
// https://update.kbv.de/ita-update/Abrechnung/KBV_ITA_VGEX_Datensatzbeschreibung_KVDT.pdf 
// * include $csWOP#47 "Koblenz"
// * include $csWOP#48 "Rheinhessen"
// * include $csWOP#49 "Pfalz"
// * include $csWOP#50 "Trier"
// * include $csWOP#55 "Nordbaden"
// * include $csWOP#60 "Südbaden"
// * include $csWOP#61 "Nordwürttemberg"
// * include $csWOP#62 "Südwürttemberg"
