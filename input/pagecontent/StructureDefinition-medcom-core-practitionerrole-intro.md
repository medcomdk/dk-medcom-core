### Scope and usage 

This profile describes the MedComCorePractitionerRole which is used to describe a practitioner's role in a MedCom standard.
If a practitioner is referenced from MedComCorePractitionerRole it shall be a MedComCorePractitioner.

Just as it is in the original FHIR ressource, the MedComCorePractitionerRole is broadly defined and describes services a practitioner is able to provide for the organization. 

It is prefered to use a code from [MedComCorePractitionerRoles](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-PractitionerRoles.html). If these does not cover the needs, the roles can be included in a string at PractitionerRole.code.text.

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCorePractitionerRole.