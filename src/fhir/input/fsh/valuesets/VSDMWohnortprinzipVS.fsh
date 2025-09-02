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
* include $csWOP#71 "Bayerns"
* include $csWOP#72 "Berlin"
* include $csWOP#73 "Saarland"
* include $csWOP#78 "Mecklenburg-Vorpommern"
* include $csWOP#83 "Brandenburg"
* include $csWOP#88 "Sachsen-Anhalt"
* include $csWOP#93 "Thüringen"
* include $csWOP#98 "Sachsen"

// TODO: Die folgenden Codes aus dem CodeSystem sind in der BMV-Ä-Vorgabetabelle nicht enthalten, 
// aber nach Einschätzung des GKV-SV ergänzend aufzunehmen. Eine Bestätigung der KBV sollte 
// aber vorab eingeholt werden, da der Punkt nicht Teil der KBV/GKV-SV Verhandlungen war. 

// Wenn das vollständige CodeSystem zugelassen werden soll, kann dieses ValueSet
// entfallen und durch https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_ITA_WOP ersetzt werden.

* include $csWOP#00 "WIP: Dummy bei eGK"
* include $csWOP#47 "WIP: Koblenz"
* include $csWOP#48 "WIP: Rheinhessen"
* include $csWOP#50 "WIP: Trier"
* include $csWOP#55 "WIP: Nordbaden"
* include $csWOP#60 "WIP: Südbaden"
* include $csWOP#61 "WIP: Nordwürttemberg"
* include $csWOP#62 "WIP: Südwürttemberg"
