### Scope and usage 

MedComCorePatient profile describes information about a patient or citizen in a MedCom standard. 
The MedComCorePatient is inherited from the [DkCorePatient](https://hl7.dk/fhir/core/2.0.0/StructureDefinition-dk-core-patient.html) profile defined by HL7 Denmark. An identifier and the patients official family name ('efternavn' in Danish) **SHALL** both be present, when exchanging patient related information.  

Please refer to the tab "Snapshot Table" below for the definition of the required content of a MedComCorePatient.

#### Patient identifiers

A MedComCorePatient **SHALL** include an identifier, containing a value which is the actual id and a system which is used to identify a set of unique values. 

When a patient has an official civil person register (CPR)-number this **SHALL** be used. To represent a CPR-number, the identifier [DkCoreCprIdentifier](https://hl7.dk/fhir/core/2.0.0/StructureDefinition-dk-core-cpr-identifier.html) **SHALL** be used. In the identifier the system is used to describes that value is an official CPR-number, as described on [cpr.dk](https://cpr.dk/).

Only in cases where the patient does not have an official CPR-number, a replacement person identifier (Danish: Erstatningspersonnummer) (eCPR)-number **SHALL** be used. More information concerning the use of eCPR-numbers can be found on [DkCorePatient](https://hl7.dk/fhir/core/StructureDefinition-dk-core-patient.html#ecpr-identifier).