Profile: MedComCorePractitioner
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-practitioner
Id: medcom-core-practitioner
Description: "Practitioner resource is used to describe a healthcare professional or another actor involved in citizen or patient care."
* id MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* name MS
* name.given MS
* name.family MS
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(name.given)
* insert ProducerShallPutInNarrative(name.family)

Instance: e9eacb62-666b-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Example of a Practitioner"
Description: "Example of a practitioner with a name"
* name.use = #official
* name.family = "Vestergaard"
* name.given[0] = "Bo"
* name.given[1] = "Test"