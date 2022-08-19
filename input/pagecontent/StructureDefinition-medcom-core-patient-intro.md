### Scope and usage 

MedComCorePatient profile describes information about a patient or citizen in a MedCom standard. 
The MedComCorePatient is inherited from the [DkCorePatient](https://hl7.dk/fhir/core/1.1.0/StructureDefinition-dk-core-patient.html) profile defined by HL7 Denmark. An identifier and the patients official family name ('efternavn' in Danish) shall both be present, when exchanging patient related information.  

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCorePatient.

#### Patient identifiers
When using the MedComCorePatient it shall include an identifier of the patient for exchange of patient related information. When a patient has a civil person register (CPR)-number this shall be used. More information about the CPR-number can be found on [cpr.dk](https://cpr.dk/). In case a patient does not have a CPR-number, a replacement person identifier (Danish: Erstatningspersonnummer) (E-CPR) shall be used. E-CPR is a national unique temporary personal identification number, that includes the possibility of associating information with other unique personal identifiers such as passports. Further, an E-CPR includes 10 numbers like a CPR-number, but it is recommended to have a structure that cannot be mistaken for a CPR-number, according to [cpr.dk/cpr-systemet/erstatningspersonnummer-i-eksterne-systemer](https://cpr.dk/cpr-systemet/erstatningspersonnummer-i-eksterne-systemer) and [www.oid-info.com/get/1.2.208.176.1.6](http://www.oid-info.com/get/1.2.208.176.1.6).
