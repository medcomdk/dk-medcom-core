Profile: MedComCorePractitionerRole
Parent: PractitionerRole
Id: medcom-core-practitionerrole
Description: "PractitionerRole resource used to describe the role of a healthcare professional or another actor involved in  citizen or patient care."
* identifier 1..1 MS 
* identifier.value 1..1 MS 
* identifier obeys medcom-uuidv4
* identifier ^short = "The PractitionerRole identifier" 
* practitioner only Reference(MedComCorePractitioner) 
* practitioner MS
* code MS
* code from $PractitionerRoles (example)
* code.coding MS
* code.text MS
* organization MS
* organization only Reference(MedComCoreOrganization) 
* organization ^type.aggregation = #bundled

Instance: 6057686e-666c-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "Example of a PractitionerRole"
Description: "Example of a practitioner role with a code and reference to a practitioner"
* code = $PractitionerRole#afdelingslaege
* practitioner = Reference(e9eacb62-666b-11ed-9022-0242ac120002)
* identifier.value = "urn:uuid:e772c052-b8e5-4fc7-bb1d-707cfd25ac3b"


//Practitioner rolle
Instance: 6ff69f1c-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(e9eacb62-666b-11ed-9022-0242ac120002)
* code = $PractitionerRole#sygeplejerske
* identifier.value = "urn:uuid:d4319024-f2c0-47f3-8925-ad893b2a510c"