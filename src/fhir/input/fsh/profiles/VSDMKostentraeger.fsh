Profile: VSDMKostentraeger
Parent: Organization
Id: vsdm-kostentraeger
* ^url = "https://gematik.de/fhir/vsdm2/StructureDefinition/VSDMKostentraeger"
* insert Meta
* identifier
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "use"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* identifier contains haupt-ik 1..1 MS
* identifier contains abrechnungs-ik 1..1 MS
* identifier[haupt-ik] only IdentifierIknr
  * use = #official (exactly)
* identifier[abrechnungs-ik] only IdentifierIknr
  * use = #secondary (exactly)
* active = true (exactly)
* name 1..1 








