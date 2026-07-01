ValueSet: VSDMWohnortprinzipVS
Title: "Wohnortprinzip (WOP)"
Description: "Wohnortprinzip im Versichertenstammdatenmanagement (VSDM) 2.0"

* insert Meta

* include $csWOP|1.00#01 "Schleswig-Holstein"
* include $csWOP|1.00#02 "Hamburg"
* include $csWOP|1.00#03 "Bremen"
* include $csWOP|1.00#17 "Niedersachsen"
* include $csWOP|1.00#20 "Westfalen-Lippe"
* include $csWOP|1.00#38 "Nordrhein"
* include $csWOP|1.00#46 "Hessen"
* include $csWOP|1.00#51 "Rheinland-Pfalz"
* include $csWOP|1.00#52 "Baden-Württemberg"
* include $csWOP|1.00#71 "Bayern"
* include $csWOP|1.00#72 "Berlin"
* include $csWOP|1.00#73 "Saarland"
* include $csWOP|1.00#78 "Mecklenburg-Vorpommern"
* include $csWOP|1.00#83 "Brandenburg"
* include $csWOP|1.00#88 "Sachsen-Anhalt"
* include $csWOP|1.00#93 "Thüringen"
* include $csWOP|1.00#98 "Sachsen"

// Die folgenden Codes aus dem Ausgangs-CodeSystem https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_ITA_WOP sind in der BMV-Ä-Vorgabetabelle nicht enthalten.

// Der folgende "Leerwert" ist für VSDM 2.0 nicht mehr notwendig.
// * include $csWOP|1.00#00 "Dummy bei eGK"

// Die folgenden Werte sind in der KVDT-Datensatzbeschreibung als "fusioniert, teilweise aber noch in Gebrauch (bspw. KVK-WOP)" markiert.
// https://update.kbv.de/ita-update/Abrechnung/KBV_ITA_VGEX_Datensatzbeschreibung_KVDT.pdf
// * include $csWOP|1.00#47 "Koblenz"
// * include $csWOP|1.00#48 "Rheinhessen"
// * include $csWOP|1.00#49 "Pfalz"
// * include $csWOP|1.00#50 "Trier"
// * include $csWOP|1.00#55 "Nordbaden"
// * include $csWOP|1.00#60 "Südbaden"
// * include $csWOP|1.00#61 "Nordwürttemberg"
// * include $csWOP|1.00#62 "Südwürttemberg"
