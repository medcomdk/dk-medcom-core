Profile: MedComCorePractitioner
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-practitioner
Id: medcom-core-practitioner
Description: "Practitioner resource is used to describe a healthcare professional or another actor involved in citizen or patient care."
* identifier 1..1 MS 
* identifier.value 1..1 MS 
* identifier obeys medcom-uuidv4
* identifier ^short = "The Practitioner identifier" 
* name MS

Instance: e9eacb62-666b-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Example of a Practitioner"
Description: "Example of a practitioner with a name"
* identifier.value = "urn:uuid:4e97ddd9-dddb-4abd-9562-2c251cadb4a3"
* name.use = #official
* name.family = "Vestergaard"
* name.given[0] = "Bo"
* name.given[1] = "Test"