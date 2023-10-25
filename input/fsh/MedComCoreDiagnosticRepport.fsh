Profile: MedComCoreDiagnosticReport
Parent: DiagnosticReport
Id: medcom-core-diagnosticreport
Title: "MedComCoreDiagnosticReport"
Description: "Report containing all observation results. "
* status 1..1 MS
* status from $StatusCodeDiagnosticReport
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* code MS
* code from $DiagnosticReportCode
* subject 1..1 MS
* subject only Reference(MedComCorePatient) 
* subject ^type.aggregation = #bundled
* issued 1..1 MS
* result MS
* result only Reference(MedComCoreObservation)
* result ^type.aggregation = #bundled
* performer MS
* media MS
* media.link only Reference(MedComCoreMedia) 
* media ^short = "Attachemts that are relevant for assesment of the patient's condition "
* media.link MS SU
* conclusion 0..1 MS
* conclusion ^short = "A comment relevant for all observations in the report."
* meta.security 0..1 MS SU
* meta.security = $v3-Confidentiality#R "Restricted"