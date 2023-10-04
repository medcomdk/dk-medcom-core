Extension: MedComCoreIdentifierExtension
Id: medcom-core-identifier-extension
Title: "IdentifierExtension"
Description: "An extension holding a specific identifier datatype"
* valueIdentifier 1.. MS
* valueIdentifier only MedComAssignedIdentifier


Profile: MedComAssignedIdentifier
Parent: Identifier
Id: medcom-assigned-identifier
Title: "AssignedIdentifier"
Description: "An UUID identifier assigned by an organisation"
* value 1..
* value ^short = "The value is a UUID identifier version 4."
* value obeys medcom-uuidv4
* assigner 1..
* assigner ^short = "A reference to the organization that initially added the identifier."
* assigner only Reference(MedComCoreOrganization)
* assigner and value MS

Invariant: medcom-uuidv4
Description: "The value shall correspond to the structure of an UUID version 4"
Severity: #error
Expression: "value.matches('urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"