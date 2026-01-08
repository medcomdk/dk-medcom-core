Profile: MedComCorePractitionerRole
Parent: DkCorePractitionerRole
Id: medcom-core-practitionerrole
Description: "PractitionerRole resource used to describe the role of a healthcare professional or another actor involved in  citizen or patient care."
* id 1.. MS
* text 1.. MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* practitioner only Reference(MedComCorePractitioner) 
* practitioner MS
* code  MS
* code from $PractitionerRoles (example)
* code.coding MS
* code.coding.system MS
* code.coding.code MS
* code.text MS
* organization 1.. MS
* organization only Reference(MedComCoreOrganization) 
* organization ^type.aggregation = #bundled
* obeys medcom-core-practitionerrole-code-xor-text
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(practitioner)
* insert ProducerShallPutInNarrative(organization)
* insert ProducerShallPutInNarrative(code.coding.system)
* insert ProducerShallPutInNarrative(code.coding.code)
* insert ProducerShallPutInNarrative(code.text)


Invariant: medcom-core-practitionerrole-code-xor-text
Description: "There shall exist a practitioner role code.coding or text if code is present."
Severity: #error
Expression: "code.exists() implies (code.coding.where(system.exists() and code.exists()).exists() xor code.text.exists())"

Instance: 6057686e-666c-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "Example of a PractitionerRole"
Description: "Example of a practitioner role with a code and reference to a practitioner"
* code = $PractitionerRole#afdelingslaege
* practitioner = Reference(e9eacb62-666b-11ed-9022-0242ac120002)
* organization = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)


//Practitioner rolle
Instance: 6ff69f1c-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(e9eacb62-666b-11ed-9022-0242ac120002)
* code = $PractitionerRole#sygeplejerske
* organization = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)