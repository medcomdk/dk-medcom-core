### Introduction

This Implementation Guide (IG) is provided by MedCom to describe the FHIR &reg;&copy MedComCore profiles. This IG represents the base expectation when describing a Patient, Encounter or Organization when exchaning information in a setting of Danish context.
As the MedComCore profiles only specify the base expectations, they are in general made open for additional content. This is chosen to allow further profiling for specific purposes defined by the communicating parties.

The purpose of this IG is to :
* provide guidance on MedComCore profiles, code system, value sets and naming systems in a Danish context.
* define extensions that are necessary for local use covering needed Danish concepts

The MedComCore profiles only constitues a part of a message. To send a complete message, profiles from the MedComMessaging and e.g. MedComCareCommunication og MedComHospitalNotification. The general messaging model is further described in MedComMessaging 

This IG describes the following MedComCore profiles: 
* MedComCorePatient
* MedComCoreOrganization
* MedComCoreEncounter
* MedComCorePractitioner
* MedComCorePractitionerRole

### General references

All referenced resources within the message are contained in the entry list.

#### Content

This document presents MedCom messaging concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to core FHIR resources and datatype for use in MedCom messages
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for the messaging
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for the messaging context

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/hl7dk/dk-medcom)
* [Wiki](https://github.com/hl7dk/dk-medcom)
