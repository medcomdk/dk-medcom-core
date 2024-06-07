Profile: MedComCorePatient
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient
Id: medcom-core-patient
Description: "Patient/citizen resource to use as subject in MedCom communication."
* identifier[cpr] ^short = "Unique identification number for all citizens in Denmark, called civil person register (CPR-number)."
* identifier[cpr] MS
* identifier[x-ecpr] MS
* identifier[d-ecpr] MS
* name 1..
* name[official] 1.. MS
* name[official].given MS
* name[official].given ^definition = "Shall be present if the official given name of the patient is known, danish \"fornavn\". "
* name[official].family MS
* name[official].family ^definition = "Shall always be present, danish \"efternavn\". "
* telecom ^definition = "Shall contain value, system and use if these information are known."
* telecom only MedComMessagingContactPoint
* deceased[x] MS
* deceased[x] ^definition = "Shall contain information if the patient is deceased and it is relevant in the given context"
* deceased[x] ^short = "Shall only be sent if the patient is deceased or the status change from deceased to non-deceased"
* address ^definition = "Shall contain all known, relevant addresses of the patient"
* address.line MS
* address.line ^definition = "Shall contain the known information about the street name, number etc. to provide an exact address"
* address.city MS
* address.city ^definition = "Shall be present if the city is known"
* address.postalCode MS
* address.postalCode ^definition = "Shall be present if the postal code is known"
* managingOrganization only Reference(MedComCoreOrganization)
* managingOrganization ^type.aggregation = #bundled
* managingOrganization ^definition = "Organization that is the custodian of the patient record. This can e.g. be the sender of a message or responsable for the patients treatment. One of these organizations will always be included in the bundle, why this element is not mandatory to include."
* identifier and name and telecom and address MS SU


Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"


Instance: ded1fc9a-aa93-4162-aaec-7145a8ac951f
InstanceOf: MedComCorePatient
Title: "Birgit Berggren"
Description: "Patient described with minimal information and replacement cpr-number. Valid only if used in a Bundle."
* identifier.system = "urn:oid:1.2.208.176.1.6.1.1"
* identifier.value = "0703921VJ4"
* identifier.use = #temp
* name[official].use = #official
* name[official].family = "Berggren"
* name[official].given = "Birgit"



Instance: 382fb8a3-6725-41e2-a615-2b1cfcfe9931
InstanceOf: MedComCorePatient
Title: "Cæcar Test Østergård"
Description: "Deceased patient described with maximum information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2311143995"
* name[official].use = #official
* name[official].given[0] = "Cæcar"
* name[official].given[1] = "Test"
* name[official].family = "Østergård"
* telecom.system = #phone
* telecom.value = "24533421"
* telecom.use = #home
* address.line = "Testhjemmet 1"
* address.city = "Odense M"
* address.postalCode = "5230"
* deceasedBoolean = true

Instance: 5b72c625-0570-4111-b272-f0351344f8b6
InstanceOf: MedComCorePatient
Title: "Brita Test Berggren"
Description: "Patient described with maximum information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1509819996"
* name[official].use = #official
* name[official].given = "Brita Test"
* name[official].family = "Berggren"
* telecom[0].system = #phone
* telecom[0].value = "12457812"
* telecom[0].use = #work
* telecom[1].system = #phone
* telecom[1].value = "98879887"
* telecom[1].use = #home
* address.line = "Testpark Allé 48"
* address.city = "Hillerød"
* address.postalCode = "3400"
* deceasedBoolean = false
