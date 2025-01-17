Extension: VSDMKostentraegerLaendercodeEX
Id: vsdm-kostentraeger-laendercode-ex
Context: Coverage
* insert Meta
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraegerLaendercodeEX"
* . ^short = "Gibt den Kostentraegerlaendercode vom Kostentraeger des Versicherten an."
* url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraegerLaendercodeEX" (exactly)

* value[x] 1.. MS
* value[x] only Coding
* value[x] from $iso3166-1-2 (required)
* value[x] obeys CodingSystemCodeInv
* value[x].system 1.. MS
* value[x].code 1.. MS

Invariant: CodingSystemCodeInv
Description: "System and Code SHOULD be present"
* severity = #warning
* expression = "system.exists() and code.exists()"