Profile: MedComCoreObservation
Parent: DkCoreObservation
Id: medcom-core-observation
Title: "MedComCoreObservation"
Description: "Observation profile intended to be used in MedComHomeCareObservation and MedCom's Laboratory standards."
* status 1..1 MS
* status from $ObsStatusCodes
* status ^short = "registered | partial | preliminary | final | corrected | cancelled | entered-in-error" 
* effectiveDateTime MS 
* effectiveDateTime ^short = "Tha date and time the sample was taken (Danish: prøvetegningstidspunkt)."
* code MS
* code.coding.code MS
* code.coding.system MS
* subject 1..1 MS
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
* note MS
* note ^short = "A comment on the individual result (Danish: Analysekommentar)"
