# 1 Hinweise zum Informationsmodell VSDM 2.0

Mit der Einführung von VSDM 2.0 wird FHIR (Fast Healthcare Interoperability Resources) zur Datenübertragung verwendet. 
Ziel der FHIR-Implementierung für VSDM 2.0 ist eine konsistente Datenhaltung und einen effizienten Austausch von Versichertenstammdaten zwischen dem Fachdienst VSDM 2.0 und den Primärsystemen zu gewährleisten. FHIR bietet hierfür eine Grundlage, die sich flexibel an spezifische Anforderungen anpassen lässt.

### Logical Model 

Das Logical Model beschreibt die Struktur der Versichertenstammdaten aus fachlicher Sicht. Es dient als Grundlage für die Ableitung von FHIR-Profilen und unterstützt die Kommunikation zwischen Fachdomäne und technischer Umsetzung.
Jedes Element des Datensatzen wird wiefolgt beschrieben:
- Name des Attributs
- Kardinalität
- Datentyp
- Beschreibung
- Definition

Links im Simplifier

Logical Model für die GKV: [LogicalModelVSDM2.0-GKV](https://simplifier.net/vsdm2/vsddatensatzgkv)

Logical Model für die PKV: [LogicalModelVSDM2.0-PKV](https://simplifier.net/vsdm2/vsddatensatzpkv)

Die nachfolgenden Logical Models "Versichertendaten" und "Versicherungsdaten" dienen zur Beschreibung der VSD für die gesetzliche und private Krankenversicherung und als Grundlage zur Definition der FHIR-Profile für VSDM 2.0.

Weitere in den FHIR-Profilen Patient und Coverage befindliche Felder aus dem Basisdatensatz werden bei der Befüllung und Übertragung des Datensatzes nicht beachtet. Das Logical Model bildet den kompletten VSD-Datensatz ab.

### Gesetzliche Krankenversicherung

#### Versichertendaten GKV

![Alt-Text](/images/LMVersichertendatenGKV.png)

#### Versicherungsdaten GKV

![Alt-Text](/images/LMVersicherungsdatenGKV.png)


### Private Krankenversicherung

#### Versichertendaten PKV

![Alt-Text](/images/LMVersichertendatenPKV.png)
 
#### Versicherungsdaten PKV

![Alt-Text](/images/LMVersicherungsdatenPKV.png)


### Mapping
Das Mapping beschreibt die Zuordnung der Attribute des Logical Models für Versicherungsdaten zu den entsprechenden Feldern in einer FHIR-Ressource Coverage und Patient. 

Ziel ist es sicherzustellen, dass die Daten aus dem Logical Model korrekt in beide Zielsysteme transformiert werden können.

Die Mappingtabellen zu Patient und Coverage befinden sich hier:

[Mapping logicalmodel-FHIR-Profile GKV](https://simplifier.net/vsdm2/VSDDatensatzGKV/~mappings)

[Mapping logicalmodel-FHIR-Profile PKV](https://simplifier.net/vsdm2/VSDDatensatzPKV/~mappings)




# 2. Hinweise zum verkürzten VSD-Datensatz auf der eGK

Gemäß den gesetzlichen Vorgaben aus §291 SGB V muss die eGK, wenn sie nach dem 1. Januar 2026 herausgegeben wird, die Speicherung folgender Daten ermöglichen:

- die Bezeichnung der ausstellenden Krankenkasse, einschließlich eines Kennzeichens für die Kassenärztliche Vereinigung, in deren Bezirk der Versicherte seinen Wohnsitz hat
- der Familienname und der Vorname des Versicherten
- das Geburtsdatum des Versicherten
- die Krankenversichertennummer des Versicherten

Die Restdaten befinden sich in folgenden Containern der eGK:
- Allgemeine Versicherungsdaten
- Persönliche Versichertendaten

Der Container "Geschützte Versichertendaten" wird nicht mehr befüllt.

Die Bereitstellung der Daten erfolgt mittels eines angepassten VSD Schemas auf der Basis des in VSDM 1 verwendeten Schemas VSD 5.2.
  

[XML-Schema zum verkürzten VSD-Datensatz](/src/vsds/vsdmschemaverkuerzt.xsd)

