

Profile: MedComCoreObservation
Parent: DkCoreObservation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation profile."
* id 1.. MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* status 1..1 MS
* status from $ObsStatusCodes
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* effective[x] ^short = "The date and time of the observation."
* code MS
* subject 1..1 MS
* subject only Reference(DkCorePatient)
* subject ^type.aggregation = #bundled
* performer 1.. MS
* performer only Reference(MedComCoreOrganization or MedComCorePractitioner or MedComCorePractitionerRole or MedComCoreCareTeam or DkCorePatient or DkCoreRelatedPerson)
* bodySite 1.. MS
* extension contains
    $MedComObsExtValueAttachment named valueAttachment 0..*

/* // --- R5 valueAttachment via official cross-version extension ---
* extension contains
    $obsExtValueAttachment named valueAttachmentR5 0..*
* extension[valueAttachmentR5].value[x] only Attachment */

* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(status)
* insert ProducerShallPutInNarrative(subject)
* insert ProducerShallPutInNarrative(performer)
