<!-- <a href="https://medcomdk.github.io/MedComLandingPage/">Return</a> -->

# MedCom Core 


**Table of contents**
- [1 Standard documentation](#1-standard-documentation)
  * [1.1 Technical specification](#11-technical-specification)
* [2 Styling the XHTML](#2-styling-the-xhtml)

This page presents the MedCom Core profiles (Danish: Kerneprofiler) used in MedCom's FHIR standards. 

These profiles describe fundamental information when exchanging information. Therefore, one or more core profiles are included in all MedCom's FHIR standards. The core profiles do not constitute a standard on their own, but the profiles will be used in the standards, such as HospitalNotification or CareCommunication. Thus, this page includes the IG and an introduction to the content of the IG solely and does not include clinical guidelines, use cases, test protocols etc.

## 1 Standard documentation 
In the standard documentation below you will find the necessary content to understand the technical specifications for the standard. 

### 1.1 Technical specification
The technical specifications for the MedCom Core profiles are defined in an IG. 
The <a href="https://medcomfhir.dk/ig/core/" target="_blank">MedCom Core Implementation Guide (IG)</a> includes the following profiles:	
* <a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html" target="_blank">MedComCorePatient</a> 
* <a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html" target="_blank">MedComCoreOrganization</a> 
* <a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html" target="_blank">MedComCoreEncounter</a>  
* <a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-careteam.html" target="_blank">MedComCoreCareTeam</a>  
* <a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html" target="_blank">MedComCorePractitioner</a>
* <a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html" target="_blank">MedComCorePractitionerRole</a> 
<br>
<br>

The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support. Further the structure of the standard is described and supported with examples in different degree of technical skills.
[Click here to find an overview of the content of the standard.](assets/documents/Intro-Technical-Spec-ENG.md)

## 2 Styling the XHTML  
This section describe MedComs recommendations of how styling the XHTML should be performed. It is assummed that the XHTML styling will be used across different exchange paradigms, why it is presented here. The XHTML in the narrative text may be styled in different ways. To avoid inconsistency between implemented XHTML stylings, MedCom has defined recommendations of how styling the XHTML should be performed. MedCom's recommendations are based on the FHIR styling of the XHTML rules.
 
[Click here to finde MedCom's recomendations of how to style the XHTML.](assets/documents/MedComCore-Styling_the_XHTML.md)
<!-- As mentioned previously the MedCom Core profiles do not alone compose a standard but are used to describe important information in MedCom's standards. 

Understanding IG's might be difficult for people with little or no knowledge about FHIR. Therefore, MedCom has developed a page describing the content of the core IG. The link below gives an overview of the included profiles, what their purpose is, and which elements the system should suppor.  -->





