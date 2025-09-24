### Scope and usage 

This profile describes the MedComCoreEncounter. An encounter describes the interaction between a patient and one or more healthcare providers for the purpose of providing healthcare services or assessing the health status of a patient. An encounter can take place in an ambulatory, an emergency, at the citizen's home, virtually and so on. 

The base expectations when describing an encounter in a Danish context is to include the subject of the encounter which shall be a [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) as well as a status and class, which are described below. For some specific purposes, such as [HospitalNotification](https://medcomfhir.dk/ig/hospitalnotification/), there is a need for a specialization of the MedComCoreEncounter. In these cases, it will be explicitly described which encounter to use and which changed are applied. 

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCoreEncounter. 

#### Status and class

A status and class shall be included MedComCoreEncounter. 

The status refers to the current state of the encounter. This will most often change due to the nature an encounter, as it will pass through many statuses which follows the workflow of the encounter. A status can be 'in-progress' describing that the patient is present or the meeting has begun, or 'finished' describing that the encounter is finished.

The class describes in which setting the encounter took place. A setting of the encounter can be 'emergency', 'ambulant' or 'inpatient'.

#### EpisodeOfCare identifier

The element Encounter.episodeOfCare may be included in MedComCoreEncounter. 

The EpisodeOfCare identifier is used to technically connect several encounters concern the same meeting between a patient and one or more healthcare providers.

It is both possible to use a [Landspatientregisteret](https://www.esundhed.dk/Registre/Landspatientregisteret)-identifier (called LPR3-identifier) and a locally defined identifier as the EpisodeOfCare-identifier. 

Whether a LPR3-identifier or a locally defined identifier is used, it shall be an UUID. The LPR3-identifier shall obey a rule stating that the UUID shall be of version 5, [here more information about the LPR3-identifier can be found](https://scandihealth.github.io/lpr3-docs/). Using a locally defined identifier, a system for the identifier shall be added. 
