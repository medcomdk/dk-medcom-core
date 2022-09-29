Profile: MedComCoreECprIdentifier
Parent: Identifier
Id: medcom-core-ecpr-identifier
Title: "Danish Replacement Person Identifier (E-CPR)"
Description: "A Danish replacement person identifier. This shall only be used when a patient or citizen does not have an official CPR-number."
* use = #temp (exactly)
* system 1..
* system from $MedComCoreECPRValues
* value 1..
* value ^maxLength = 10