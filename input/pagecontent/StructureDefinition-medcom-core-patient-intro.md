### Scope and usage 

MedComCorePatient profile describes information about a patient or citizen in a MedCom standard. 
The MedComCorePatient is inherited from the [DkCorePatient](https://hl7.dk/fhir/core/2.0.0/StructureDefinition-dk-core-patient.html) profile defined by HL7 Denmark. An identifier and the patients official family name ('efternavn' in Danish) shall both be present, when exchanging patient related information.  

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCorePatient.

#### Patient identifiers

A MedComCorePatient shall include an identifier, containing a value which is the actual id and a system which is used to identify a set of unique values. 

When a patient has an official civil person register (CPR)-number this shall be used. To represent a CPR-number, the identifier [DkCoreCprIdentifier](https://hl7.dk/fhir/core/2.0.0/StructureDefinition-dk-core-cpr-identifier.html) shall be used. In the identifier the system is used to describes that value is an official CPR-number, as described on [cpr.dk](https://cpr.dk/).

Only in cases where the patient does not have an official CPR-number, a replacement person identifier (Danish: Erstatningspersonnummer) (eCPR)-number shall be used. To represent an eCPR-number the identifier [MedComCoreECprIdentifier](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-ecpr-identifier.html) shall be used. The identifier shall include a value of maximum 10 values and a system. Currently, it is possible to use the [national eCPR register defined by the Danish health Data Authority](https://sundhedsdatastyrelsen.dk/da/registre-og-services/ecpr) as system. However, the list of possible systems for eCPR-numbers may be extended if there is consensus between stakeholder to add another system to the ValueSet.