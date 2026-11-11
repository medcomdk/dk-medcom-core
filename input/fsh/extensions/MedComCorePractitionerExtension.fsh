Extension: MedComCorePractitionerExtension
Id: medcom-core-practitioner-extension
Title: "PractitionerExtension"
Description: "Reference to a PractitionerRole and subsequent Practitioner"
* value[x] 1..1
* value[x] only Reference(MedComCorePractitionerRole)
* value[x] ^type.aggregation = #bundled
