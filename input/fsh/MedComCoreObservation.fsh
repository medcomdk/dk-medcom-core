Profile: MedComCoreObservation
Parent: DkCoreObservation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation profile intended to be used in MedComHomeCareObservation and MedCom's Laboratory standards."
* id MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* identifier 1..1 MS 
* identifier.value 1..1 MS
* identifier.system 1..1 MS 
* identifier ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data." 
* status 1..1 MS
* status from $ObsStatusCodes
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* effective[x] ^short = "The date and time of the observation."
* code MS
* subject 1..1 MS
* subject only Reference(DkCorePatient)
* subject ^type.aggregation = #bundled
* performer MS
* performer only Reference(MedComCoreOrganization or MedComCorePractitioner or MedComCorePractitionerRole or MedComCoreCareTeam)

Reference(| Danish Core Patient Profile | Danish Core Related Person Profile)
// --- R5 valueAttachment via official cross-version extension ---
* extension contains
    $obsExtValueAttachment named valueAttachmentR5 0..*
* extension[valueAttachmentR5].value[x] only Attachment
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(status)
* insert ProducerShallPutInNarrative(subject)
