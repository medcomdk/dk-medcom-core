Extension: MedComCoreContactExtension
Id: medcom-core-contact-extension
Title: "ContactExtension"
Description: "Extension that contains the contact information"
// * ^context.type = #element
// * ^context.expression = "Communication.payload"
* valueContactPoint 1..
* valueContactPoint.value 1.. MS
* valueContactPoint.value obeys medcom-core-contact
* valueContactPoint.value ^short = "Shall contain a relevant telephone number."
* valueContactPoint.system = #phone
* valueContactPoint.system MS


Invariant: medcom-core-contact
Description: "The telephone number may include + and numbers from 0-9"
Severity: #error
Expression: "matches('[+]?[-0-9]')" 