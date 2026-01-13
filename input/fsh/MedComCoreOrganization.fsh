Profile: MedComCoreOrganization
Parent: DkCoreOrganization
Id: medcom-core-organization
Description: "A formally recognized organizations within danish healthcare, registered with a SOR identifier issued by The Danish Health Data Authority"
* id 1.. MS
* text 1.. MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* identifier
* identifier[SOR-ID] ^short = "Sundhedsvæsenets Organisationsregister (SOR) identifier" 
* identifier[SOR-ID] 1..
* identifier[SOR-ID] MS
* identifier[SOR-ID].system MS
* identifier[SOR-ID].value MS
* name MS
* name ^definition = "Name of the organization. Shall be present if known by the sender."
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(identifier[SOR-ID].system)
* insert ProducerShallPutInNarrative(identifier[SOR-ID].value)
* insert ProducerShallPutInNarrative(name)

Instance: 12ee0dde-a672-462f-820d-5efe832d73c9
InstanceOf: MedComCoreOrganization
Title: "Aros Burn Center"
Description: "An organization with a SOR identifier and name."
* identifier[SOR-ID].value = "123456789012345"
* name = "Aros Burn Center"

Instance: bca68510-fe3b-4161-aba0-908a693eb54f
InstanceOf: MedComCoreOrganization
Title: "Practitioner Clinic"
Description: "An organization with a SOR identifier, without name."
* identifier[SOR-ID].value = "378631000016009"