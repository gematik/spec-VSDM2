Extension: VSDMDMPKennzeichenBasisEX
Id: vsdm-dmp-kennzeichen-basis-ex
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMDMPKennzeichenBasisEX"
* insert Meta
* . ^short = "Gibt die Teilnahme des Versicherten an einem oder mehreren Disease Management Programmen an."
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMDMPKennzeichenBasisEX" (exactly)

* value[x] only Coding
* value[x] from $KBV_VS_SFHIR_KBV_DMP (required)
* value[x].system 1..
* value[x].code 1..
