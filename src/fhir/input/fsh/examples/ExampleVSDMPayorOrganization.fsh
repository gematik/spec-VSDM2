Instance: VSDMHauptkostentraeger
InstanceOf: VSDMPayorOrganization
Title: "Beispiel für Haupt-Kostenträger"
Usage: #example
* id = "2a6924bf-6e6a-4ef3-b79f-c2138c10712f" 
* identifier[IKNR].value = "12345678"
* type[KostentraegerTyp].coding = #ins "Hauptkostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* name = "Beispiel-Hauptkostenträger"
* address
  * country = $cs-iso3166-1-2#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"

Instance: VSDMAbrechnenderKostentrarger
InstanceOf: VSDMPayorOrganization
Title: "Beispiel für abrechnenden Kostenträger"
Usage: #example
* id = "d1f7b106-7f99-40d6-9f21-50b051301127"
* identifier[IKNR].value = "18765432"
* type[KostentraegerTyp].coding = #pay "abrechnender Kostenträger" // Textangabe ist optional, verbessert allerdings die Lesbarkeit
* name = "abrechnender Beispiel-Kostenträger"
* address
  * country = $cs-iso3166-1-2#DE
    * extension[Laenderkennzeichen].valueCoding = #D "Deutschland"

// Beispiel zur Übertragung weitergehender (nicht verpflichtender) Informationen zum Kostenträger
* contact[+]
  * purpose
    * coding = $contactentitytype#BILL
    * text = "Kontakt für Abrechnungsfragen"
  * telecom[+]
    * system = #phone
    * value = "+4952116391643"
  * telecom[+]
    * system = #email
    * value = "contact@kostentraeger.invalid"
