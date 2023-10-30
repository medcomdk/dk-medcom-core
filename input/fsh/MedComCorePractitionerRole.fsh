Profile: MedComCorePractitionerRole
Parent: PractitionerRole
Id: medcom-core-practitionerrole
Description: "PractitionerRole resource used to describe the role of a healthcare professional or another actor involved in  citizen or patient care."
* practitioner only Reference(MedComCorePractitioner) 
* practitioner MS
* code MS
* code from $PractitionerRoles (example)
* organization MS
* organization only Reference(MedComCoreOrganization) 
* organization ^type.aggregation = #bundled

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
* practitioner = Reference(b56708c6-2df3-4e4a-a110-2f924b9fc072)
* code = $PractitionerRole#sygeplejerske