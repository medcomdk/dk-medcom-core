## Release Notes

This release introduces substantial changes across a large number of MedCom Core profiles. The updates include, among others, revised cardinalities, adjusted Must Support (MS) requirements, added and removed narrative obligations, and the removal or restructuring of selected elements.  
The changes were mainly made to address that some profiles had become overly restrictive compared to actual implementation needs, and to ensure that the profiles can be used consistently in the context of FHIR Documents.

The detailed, profile-specific changes are listed in the sections below. In addition, profile descriptions have been updated to reflect the applied changes, and both the index page and selected example instances have been revised accordingly to ensure consistency with the updated profiles. The index page has also been updated with revised links, including links to updated governance documentation.

---

## MedCom Core

### 1. lpr3-Identifier
- `system` changed to `1..1 MS` and narrative obligation added.
- `value` changed to `1..1 MS` and narrative obligation added.

### 2. medcom-core-careteam
- `id` and `text` changed to `1..1 MS`.
- `managingOrganization` changed to `1..1 MS`.

### 3. medcom-core-contact-extension
- Narrative obligation added to `valueContactPoint.system`.
- Narrative obligation added to `valueContactPoint.value`.
- Narrative obligation added to `valueContactPoint.use`.

### 4. medcom-core-diagnosticreport
- `identifier` requirements removed.
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`. `text.status` and `text.div` added MS.
- `issued` requirements removed.
- `result` MS removed.
- `performer` MS removed and reference restricted to:  
  `MedComCorePractitioner`, `MedComCorePractitionerRole`, or `MedComCoreCareTeam`.
- `media` MS removed.
- `media.link` MS removed.
- `conclusion` requirements removed.
- Narrative obligation added to `id`, `status`, `code`, and `subject`.

### 5. medcom-core-encounter
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`.
- `episodeOfCare.identifier.system` changed to `1..1 MS`.
- `episodeOfCare.identifier.value` changed to `1..1 MS`.
- Narrative obligation added to `episodeOfCare.identifier.system` and `episodeOfCare.identifier.value`.
- Narrative obligation removed from `episodeOfCare.identifier` and `episodeOfCare[lpr3Identifier].identifier`.

### 6. medcom-core-media
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`. `text.status` and `text.div` added MS.
- Narrative obligation added to `id` and `status`.
- `identifier` requirements removed.
- `operator` MS removed. Reference restricted to:  
  `MedComCorePractitioner`, `MedComCorePractitionerRole`, `MedComCoreOrganization`,  
  `MedComCoreCareTeam`, `MedComCorePatient`, `Device`, or `DkCoreRelatedPerson`.
- `content` added MS. Requirements for underlying content elements removed.

### 7. medcom-core-observation
- `identifier` requirements removed.
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`. `text.status` and `text.div` added MS.
- `effectiveDateTime` requirements removed.
- `effective[x]` short added.
- `code.coding.code` and `code.coding.system` MS removed.
- `note` requirements removed.
- `performer` changed to `1..* MS`.
- `valueAttachment` extension added.
- Narrative obligation added to `id`, `status`, `subject`, and `performer`.

### 8. medcom-core-organization
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`.
- `identifier` added MS.
- `identifier[SOR-ID].system` and `identifier[SOR-ID].value` added MS.
- Narrative obligation removed from `identifier[SOR-ID]`.
- Narrative obligation added to `identifier[SOR-ID].system`, `identifier[SOR-ID].value`, and `id`.

### 9. medcom-core-patient
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`.
- `identifier[cpr].system`, `identifier[cpr].value`,  
  `identifier[x-ecpr].system`, `identifier[x-ecpr].value`,  
  `identifier[d-ecpr].system`, and `identifier[d-ecpr].value` added MS.
- `name` added MS.
- `name[official].use` added MS.
- `telecom`, `address.line`, `address.city`, and `address.postalCode` requirements removed.
- Narrative obligation added to:  
  `id`, `identifier[cpr].system`, `identifier[cpr].value`,  
  `identifier[x-ecpr].system`, `identifier[x-ecpr].value`,  
  `identifier[d-ecpr].system`, `identifier[d-ecpr]`,  
  `name[official].given`, `name[official].family`, and `name[official].use`.
- Narrative obligation removed from `identifier[cpr]`, `identifier[x-ecpr]`, and `identifier[d-ecpr]`.

### 10. medcom-core-practitioner
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`.
- `name.given` and `name.family` added MS.
- Narrative obligation added to `id`.
- Narrative obligation removed from `name`.
- Narrative obligation added to `name.given` and `name.family`.

### 11. medcom-core-practitionerrole
- Parent changed to `DkCorePractitionerRole`.
- `id` changed to `1..1 MS`.
- `text` changed to `1..1 MS`.
- `code.coding.system` and `code.coding.code` changed to `1..1 MS`.
- `organization` changed to `1..1 MS`.
- Narrative obligation added to `id`, `practitioner`, `organization`,  
  `code.coding.system`, `code.coding.code`, and `code.text`.
- Invariant `medcom-core-practitionerrole-code-xor-text` added.

### 12. medcom-messaging-contactpoint
- Profile removed.

### 13. medcom-observation-value-attachment-extension
- Extension added to represent attachments in observations.
