Profile: MedComCoreProducerOrganization
Parent: MedComMessagingOrganization
Id: medcom-producer-organization
Title: "MedComCoreProducerOrganization"
Description: "This profile is intended to be used to represend the producer of the observations results."
* identifier 2.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    ProducentID 1..1 
* identifier[ProducentID].system 1..1 MS
* identifier[ProducentID].system = $ProducenID  
* identifier[ProducentID].value 1..1 MS
* identifier[ProducentID] ^short = "Offical MedCom code describing the producer of the observation."
