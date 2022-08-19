Profile: MedComCoreECprIdentifier
Parent: Identifier
Id: medcom-core-e-cpr-identifier
Title: "Danish Replacement Person Identifier (E-CPR)"
Description: "This register contains national unique temporary personal identification numbers, including the possibility of associating information with other unique personal identifiers such as passports and the like. More information about the E-CPR can be found on [cpr.dk/cpr-systemet/erstatningspersonnummer-i-eksterne-systemer](https://cpr.dk/cpr-systemet/erstatningspersonnummer-i-eksterne-systemer)."
* use = #temp (exactly)
* system 1..
* system = "urn:oid:1.2.208.176.1.6" (exactly)
* value 1..
* value ^maxLength = 10
