### Scope and use
This profile is a MedCom Core profile for observations and is intended to represent observations for a variety cases including for example: 
* laboratory observations
* observations performed by a municipal acute care team
* EKG study data

#### Status
The MedComCoreObservation resource require an indication of the observation status. To indicate the observation status, a code from this valueSet defined by MedCom **MUST** be used. <a href="http://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-observation-status.html"> Click here se the status codes.</a> 


#### Codes
In a Observation resource, codes from CodeSystems are used to describe what is observed in the elements Observation.code.coding. In the element Observation.code.coding six possible CodeSystem are specified.
* NPU codes are the most used codes in Danmark to express analysis performed at the laboratory. 
* LOINC codes is an international Codsystem for health measurements, observations, and documents. LOINC codes are less stricted then NPU codes. 
* IEEE codes are internationaly codes for devices and can be used to express an original observation from a device. 
* SKS codes are classifications for use in documenting patients and healthcare services.SKS have a few observation codes in use, most are found in the ‘R’ Hierarchy - see e.g. https://medinfo.dk/sks/brows.php.
* MedCom codes are Danish codes, that have been necessary in Danish interoperability projects through time and are used to express analysis performed at the laboratory. 
* SNOMED CT codes are the world's most comprehensive clinical terminology.SNOMED CT is often used as a reference terminology, to give a common language of retrieval for data that have originally been defined or coded in some other way

#### extension:valueAttachmentR5
This extension is a cross-version backport of the official R5 extension on the element `Observation.value[x]`.

It provides support in FHIR R4 for representing `Observation.value[x]` as an `attachment` type, which is not natively supported in FHIR R4. By enabling the inclusion of base64 binary content within a MedComCoreObservation, the extension allows implementers to represent attachments such as documents, images, or other supporting materials.