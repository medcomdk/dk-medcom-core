Profile: MedComCoreCareTeam
Parent: CareTeam
Id: medcom-core-careteam
Description: "Careteam participating in the care of a patient"
* name 1.. MS
* managingOrganization 0..1 MS 
* managingOrganization only Reference(MedComCoreOrganization) 
* managingOrganization ^type.aggregation = #bundled

Instance: fb1d34fe-6672-11ed-9022-0242ac120002
InstanceOf: MedComCoreCareTeam
Title: "Example of a careteam"
Description: "Example of a careteam with a name and a reference to an organization"
* name = "Team 2"
* managingOrganization = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)