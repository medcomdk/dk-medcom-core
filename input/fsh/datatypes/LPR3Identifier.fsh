Profile: Lpr3Identifier
Parent: Identifier
Id: lpr3-Identifier
Title: "LPR3 Identifier"
Description: "Identifier holding a LPR3 identifier"
* system 1.. MS
* system = "https://www.esundhed.dk/Registre/Landspatientregisteret" (exactly) 
* value 1.. MS
* value obeys uuidv5
* insert ProducerShallPutInNarrative(system)
* insert ProducerShallPutInNarrative(value)

Invariant: uuidv5
Description: "LPR3 episodeOfCare identifiers must conform to a UUIDv5"
Severity: #error
Expression: "matches('urn:uuid:[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[5][a-fA-F0-9]{3}-[89aAbB][a-fA-F0-9]{3}-[a-fA-F0-9]{12}')"