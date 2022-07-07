### Introduction

This Implementation Guide (IG) is provided by MedCom to describe the FHIR &reg;&copy; core profiles used across MedComs standards. This IG represents the base expectation when describing a Patient, Encounter, Practitioner or Organization when exchanging information within Danish healthcare.
As the MedComCore profiles only specify the base expectations, they are in general made open for additional content. This is chosen to allow further profiling for specific purposes defined by the communicating parties.

The purpose of this IG is to:
* Define MedComCore profiles:
    * MedComCorePatient
    * MedComCoreOrganization
    * MedComCoreEncounter
    * MedComCorePractitioner
    * MedComCorePractitionerRole
* Provide CodeSystem and ValueSets often used in MedCom standard.
* Define extensions necessary for local use covering needed Danish concepts, such as a personal identification number for Danish citizens called Central Person Register (CPR-number).

The MedComCore profiles only constitutes a part of a standard. To exchange a complete MedComStandard, profiles from the MedComMessaging, MedComCareCommunication or MedComHospitalNotification shall be used, depended on the purpose of the standard. 

#### Dependencies

This IG has a dependency to [DK-core](https://hl7.dk/fhir/core/) v. 1.1.0, defined by [HL7 Denmark](https://hl7.dk/). This is currently reflected in the MedComCorePatient, MedComCoreOrganization and MedComCorePractitioner which inherit from DkCorePatient, DkCoreOrganization and DkCorePractitioner, respectivly. 

### Scope 

This document presents concepts for MedCom standards defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to FHIR resources and datatype for use in MedCom standards.
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for MedCom standards.
* [Terminologies](https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/) - are defined or referenced CodeSystem and ValueSets in MedCom Terminology IG.

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/medcomdk/dk-medcom-core)
* [Wiki](https://github.com/medcomdk/dk-medcom-core)

### Other

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there are a few errors which MedCom are aware of, describes with the message: _Reference is remote which isn't supported by the specified aggregation mode(s) for the reference (bundled)_. The errors due to some references with a Bundled flag {b}, however the referenced profil is not included in a Bundle in one or more of the example. This should not influence the implementation by vendors.

### Contact 

[MedCom](https://www.medcom.dk/) is responsible for this site.<br> 
If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
