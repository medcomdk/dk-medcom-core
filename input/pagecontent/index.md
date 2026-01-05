### Introduction

This Implementation Guide (IG) is provided by MedCom to describe MedCom's FHIR &reg;&copy; Core profiles (Dansk: Kerneprofiler) used across MedComs standards. This IG represents the base expectation when describing fx a Patient, an Encounter, a Practitioner or an Organization when exchanging information within the Danish healthcare system.
As the MedComCore profiles only specify the base expectations, they are in general made open for additional adjustments. This is chosen to allow further profiling for specific purposes defined by the communicating parties.

The purpose of this IG is to:
* Define MedCom Core profiles that constraints the FHIR resources and datatypes for use in MedCom standards. See all MedComCore profiles in the "Profiles" tab in the menu.

* Define extensions necessary for local use covering needed Danish concepts, such as a personal identification number for Danish citizens called Central Person Register (CPR-number).

The MedCom Core profiles only constitute a part of a standard. To exchange a complete MedCom standard, profiles from the other Implementation Guides is used.

**XML and JSON:** Note that the instances of the profiles may be represented in either XML or JSON and interconverted between these or have its character encoding changed, all the while remaining the same instance. 

#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies
This IG has a dependency to [DK-core](https://hl7.dk/fhir/core/), defined by [HL7 Denmark](https://hl7.dk/). This is currently reflected in the profiles that inherit from DkCore profiles.

### Documentation
[More information about MedCom Core](https://medcomdk.github.io/dk-medcom-core/) can be found here. As mentioned, MedCom Core does not alone constitute a standard, why the documentation is limited.

### Governance and guidance
FHIR profiles are managed under MedCom: [Source code](https://github.com/medcomdk/dk-medcom-core). 

A description of governance and guidance for MedCom's FHIR standards, can be found on the [MedCom Landing Page](https://medcomdk.github.io/MedComLandingPage).

The MedCom FHIR landing page provides a overview of governance requirements that apply to MedCom’s FHIR standards. This includes fx the mandatory rules for interpreting MustSupport, the formal validation requirements that implementers must follow, the expectations for producing narrative texts and governance for how MedCom Terminology is versioned.

The landing page also offers help to developers to understand how to work with MedCom’s FHIR standards. This includes a guide of how to read an Implementation Guide. Users will also find instructions on how to use some of the FHIR tools, such as validation setup.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

### Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
