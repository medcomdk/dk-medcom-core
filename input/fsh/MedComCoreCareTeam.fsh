Profile: MedComCoreCareTeam
Parent: CareTeam
Id: medcom-core-careteam
Description: "Careteam participating in the care of a patient"
* id 1.. MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* name 1.. MS
* managingOrganization 1..1 MS 
* managingOrganization only Reference(MedComCoreOrganization) 
* managingOrganization ^type.aggregation = #bundled
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(name)
* insert ProducerShallPutInNarrative(managingOrganization)

Instance: fb1d34fe-6672-11ed-9022-0242ac120002
InstanceOf: MedComCoreCareTeam
Title: "Example of a careteam"
Description: "Example of a careteam with a name and a reference to an organization"
* name = "Team 2"
* managingOrganization = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)