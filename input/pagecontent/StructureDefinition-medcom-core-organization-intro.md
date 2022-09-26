### Scope and usage 

This profile describes the MedComCoreOrganization. The MedComCorePractitioner is inherited from the [DkCoreOrganization](https://hl7.dk/fhir/core/2.0.0/StructureDefinition-dk-core-organization.html) profile defined by HL7 Denmark.
The base expectations when describing an organisation in a Danish context is to include an identifier, in terms of a Sundhundsvæsenets Organisations Register (SOR)-identifier. This profile is used to describe e.g. the organisation responsible for an encounter.

When using an organisation for exchange purposes, such as a sender, receiver or carbon-copy, please refer to the [MedComMessagingOrganization](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-organization.html). 

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCoreOrganization.