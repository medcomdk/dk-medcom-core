Profile: MedComCoreDiagnosticReport
Parent: DiagnosticReport
Id: medcom-core-diagnosticreport
Title: "MedComCoreDiagnosticReport"
Description: "Report containing all observation results."
* identifier 1..1 MS 
* identifier.value 1..1 MS 
* identifier.value obeys medcom-uuidv4
* identifier ^short = "The Diagnostic Report identifier" 
* status 1..1 MS
* status from $StatusCodeDiagnosticReport
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* code MS
* code from $DiagnosticReportCode
* subject 1..1 MS
* subject only Reference(DkCorePatient) 
* subject ^type.aggregation = #bundled
* issued 1..1 MS
* result MS
* result only Reference(MedComCoreObservation)
* result ^type.aggregation = #bundled
* performer MS
* media MS
* media.link only Reference(MedComCoreMedia) 
* media ^short = "Attachments that are relevant for assessment of the patient's condition."
* media.link MS SU
* conclusion 0..1 MS
* conclusion ^short = "A comment relevant for all observations in the report."
