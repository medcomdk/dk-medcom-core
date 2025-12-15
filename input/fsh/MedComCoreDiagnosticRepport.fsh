Profile: MedComCoreDiagnosticReport
Parent: DiagnosticReport
Id: medcom-core-diagnosticreport
Title: "MedComCoreDiagnosticReport"
Description: "Report containing all observation results."
* id 1.. MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
//* identifier 1..1 MS 
//* identifier.value 1..1 MS 
//* identifier.value obeys medcom-uuidv4
//* identifier ^short = "The Diagnostic Report identifier" 
* status 1..1 MS
* status from $StatusCodeDiagnosticReport
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* code MS
* code from $DiagnosticReportCode
* subject 1..1 MS
* subject only Reference(MedComCorePatient) 
* subject ^type.aggregation = #bundled
//* issued 1..1 MS
//* result MS
* result only Reference(MedComCoreObservation)
* result ^type.aggregation = #bundled
* performer only Reference(MedComCorePractitioner or MedComCorePractitionerRole or MedComCoreCareTeam)
* resultsInterpreter only Reference(MedComCorePractitioner or MedComCorePractitionerRole or MedComCoreOrganization or MedComCoreCareTeam)
//* media MS
* media.link only Reference(MedComCoreMedia) 
* media ^short = "Attachments that are relevant for assessment of the patient's condition."
//* media.link MS
* conclusion 0..1 //MS
//* conclusion ^short = "A comment relevant for all observations in the report."

* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(status)
* insert ProducerShallPutInNarrative(code)
* insert ProducerShallPutInNarrative(subject)
