### Scope and usage 

This profile describes the MedComCoreEncounter. The base expectations when describing an encounter in a Danish context is to include the subject of the encounter which shall be a [MedComCorePatient](StructureDefinition-medcom-core-patient.html). A status and class shall also be included. The status refers to the current state of the encounter e.g., if it is in-progress or finished, and class classifies the encounter e.g., if it is an emergency or an in-patient encounter.  

For some specific purposes, such as HospitalNotification, there is a need for a specialization of the MedComCoreEncounter. In these cases, it will be explicitly described which encounter to use and which changed are applied. 

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCoreEncounter. 