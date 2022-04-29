CodeSystem: MedComCoreEncounterActCodes
Id: medcom-core-encounter-act-codes
Title: "MedComCoreEncounterActCodes"
Description: "Codes added to encounter class value set for MedCom messages"
* ^caseSensitive = false
* #other "Other encounter class"

ValueSet: MedComCoreEncounterClass
Id: medcom-core-encounter-class
Title: "MedComCoreEncounterClassCodes"
Description: "ValueSet containg class codes for MedCom core encounter"
* include codes from system $ActCodes where concept is-a #_ActEncounterCode
* exclude $ActCodes#_ActEncounterCode
* include codes from system MedComCoreEncounterActCodes 
