- Invariant **medcom-uuidv4** is corrected as it did not work as intended.  

- MustSupport for the element **deceased** in *MedComCorePatient* is removed, as it is not relevant for all MedCom standards using the profile.  

- **Dependencies** tab in the menu bar is added.  

- The following **cardinalities**, **MustSupport**, and **Obligation (SHALL:in-narrative)** have been added:  

  - **Profile: MedComCoreCareTeam**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`  
    - MustSupport: `text`, `text.status`, `text.div`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `name`, `managingOrganization`  

  - **Profile: MedComCoreCoreEncounter**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`, `episodeOfCare:lpr3identifier.identifier`  
    - MustSupport: `text`, `text.status`, `text.div`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `class`, `subject`, `episodeOfCare:All Slices.identifier`, `serviceProvider`  

  - **Profile: MedComCoreOrganization**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`  
    - MustSupport: `text`, `text.status`, `text.div`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `identifier:SOR-ID`, `name`  

  - **Profile: MedComCorePatient**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`  
    - MustSupport: `text`, `text.status`, `text.div`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `identifier:cpr`, `identifier:x-ecpr`, `identifier:d-ecpr`, `name.family`, `name.given`, `telecom`, `address.line`, `address.city`, `address.postalCode`  

  - **Profile: MedComCorePractitioner**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`  
    - MustSupport: `text`, `text.status`, `text.div`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `name`  

  - **Profile: MedComCorePractitionerRole**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`  
    - MustSupport: `text`, `text.status`, `text.div`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `practitioner`, `organization`, `code.coding`, `code.text`  
