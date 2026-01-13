Profile: MedComObservationValueAttachmentExtension
Parent: Extension
Id: medcom-observation-value-attachment-extension
Title: "MedCom Observation ValueAttachment Extension"
Description: "Generic extension for Observation value as Attachment type."

// Canonical URL for extensionen
* ^url = "http://medcomfhir.dk/ig/core/StructureDefinition/medcom-observation-value-attachment-extension"
* ^status = #active

// Hvor extensionen må bruges
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"
* . ^short = "Observation value as attachment."
* url 1..1
* url = "http://medcomfhir.dk/ig/core/StructureDefinition/medcom-observation-value-attachment-extension" (exactly)
* value[x] only Attachment