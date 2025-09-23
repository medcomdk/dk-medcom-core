Profile: MedComCorePractitionerRole
Parent: PractitionerRole
Id: medcom-core-practitionerrole
Description: "PractitionerRole resource used to describe the role of a healthcare professional or another actor involved in  citizen or patient care."
* id MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* practitioner only Reference(MedComCorePractitioner) 
* practitioner MS
* code MS
* code from $PractitionerRoles (example)
* code.coding MS
* code.text MS
* organization MS
* organization only Reference(MedComCoreOrganization) 
* organization ^type.aggregation = #bundled
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(practitioner)
* insert ProducerShallPutInNarrative(organization)
* insert ProducerShallPutInNarrative(code.coding)
* insert ProducerShallPutInNarrative(code.text)


Instance: 6057686e-666c-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "Example of a PractitionerRole"
Description: "Example of a practitioner role with a code and reference to a practitioner"
* code = $PractitionerRole#afdelingslaege
* practitioner = Reference(e9eacb62-666b-11ed-9022-0242ac120002)


//Practitioner rolle
Instance: 6ff69f1c-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(e9eacb62-666b-11ed-9022-0242ac120002)
* code = $PractitionerRole#sygeplejerske