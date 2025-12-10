Profile: MedComCoreEncounter
Parent: Encounter
Id: medcom-core-encounter
Description: "An interaction between a patient/citizen and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient/citizen."
* id 1.. MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* status MS
* class MS
* class from $EncounterClassVS
* episodeOfCare MS
* episodeOfCare.identifier MS
* episodeOfCare.identifier.system 1..1 MS
* episodeOfCare.identifier.value 1..1 MS
* episodeOfCare ^slicing.discriminator.type = #value
* episodeOfCare ^slicing.discriminator.path = "identifier.system"
* episodeOfCare ^slicing.rules = #open
* episodeOfCare contains lpr3identifier 0..1
* episodeOfCare[lpr3identifier] ^definition = "Shall contain the episode of care if reported to the Danish National Patient Registry"
* episodeOfCare[lpr3identifier] MS
* episodeOfCare[lpr3identifier].identifier MS
* episodeOfCare[lpr3identifier].identifier 1..1 
* episodeOfCare[lpr3identifier].identifier only Lpr3Identifier
* episodeOfCare[lpr3identifier].identifier ^definition = "Shall contain the id of the episode of care reported to the Danish National Patient Registry if known"
* subject 1.. MS
* subject only Reference(DkCorePatient)
* subject ^type.aggregation = #bundled
* account ..0
* serviceProvider only Reference(MedComCoreOrganization)
* serviceProvider ^type.aggregation = #bundled
* serviceProvider MS
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(status)
* insert ProducerShallPutInNarrative(class)
* insert ProducerShallPutInNarrative(subject)
* insert ProducerShallPutInNarrative(episodeOfCare.identifier.system)
* insert ProducerShallPutInNarrative(episodeOfCare.identifier.value)
* insert ProducerShallPutInNarrative(serviceProvider)

Instance: 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#planned 
* class = $ActCodes#AMB 
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)