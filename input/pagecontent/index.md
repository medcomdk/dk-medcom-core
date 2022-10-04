### Introduction

This Implementation Guide (IG) is provided by MedCom to describe MedCom FHIR &reg;&copy; Core profiles (Dansk: Kerneprofiler) used across MedComs standards. This IG represents the base expectation when describing a Patient, Encounter, Practitioner or Organization when exchanging information within Danish healthcare.
As the MedComCore profiles only specify the base expectations, they are in general made open for additional adjustments. This is chosen to allow further profiling for specific purposes defined by the communicating parties.

The purpose of this IG is to:
* Define MedComCore profiles that constraints the FHIR resources and datatype for use in MedCom standards:
    * [MedComCorePatient](StructureDefinition-medcom-core-patient.html)
    * [MedComCoreOrganization](StructureDefinition-medcom-core-organization.html)
    * [MedComCoreEncounter](StructureDefinition-medcom-core-encounter.html)
    * [MedComCorePractitioner](StructureDefinition-medcom-core-practitioner.html)
    * [MedComCorePractitionerRole](StructureDefinition-medcom-core-practitionerrole.html)
* Define extensions necessary for local use covering needed Danish concepts, such as a personal identification number for Danish citizens called Central Person Register (CPR-number).

The MedComCore profiles only constitutes a part of a standard. To exchange a complete MedCom standard, profiles from the MedComMessaging, MedComCareCommunication or MedComHospitalNotification shall be used, depended on the purpose of the standard. 

#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies

This IG has a dependency to [DK-core](https://hl7.dk/fhir/core/) v. 2.0.0, defined by [HL7 Denmark](https://hl7.dk/). This is currently reflected in the MedComCorePatient, MedComCoreOrganization and MedComCorePractitioner which inherit from DkCorePatient, DkCoreOrganization and DkCorePractitioner, respectively. 

### Documentation

[More information about MedCom Core](https://medcomdk.github.io/dk-medcom-core/) can be found here. As mentioned, MedCom Core does not alone constitute a standard, why the extra documentation is limited.

### Governance

FHIR profiles are managed under MedCom: [Source code](https://github.com/medcomdk/dk-medcom-core). 

A description of [governance concerning change management and versioning](https://medcomdk.github.io/MedComLandingPage/#4-change-managment-and-versioning) of MedComs FHIR artefacts, can be found on the link.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

### Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
