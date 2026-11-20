## Introduction

This Implementation Guide (IG) contains various Core (essential) profiles used across MedCom FHIR standards/IGs. These profiles can be found in the [Profiles](profiles.html) menu.
Furthermore this IG also defines the shared requirements for MustSupport, narratives, validation, testing, and versioning. The [Terminology IG](https://medcomfhir.dk/ig/terminology/) owns the terminology governance including independent terminology versions and lifecycle dates.

**XML and JSON:** Note that the instances/examples of the profiles are represented in either XML or JSON (sometimes even TTL). Their character encoding will change according to the data format, but they remain the same instance.

### A note on DK-core
This IG has a dependency to [DK-core](https://hl7.dk/fhir/core/), defined by [HL7 Denmark](https://hl7.dk/). You will see this reflected in many of the MedCom profiles. Both IG's define core profiles but on different levels. While DK-core is independent of use cases in Denmark, MedCom Core is only meant for MedCom IGs.

### A note on Messaging
Currently, several MedCom FHIR IGs support Messaging based exchanges. And for that specific transport protocol there is the [MedCom Messaging IG](https://medcomfhir.dk/ig/messaging/index.html) which defines the additional governance and transport requirements for messaging-based exchange.

### Quality Assurance Report
For every IG there is a QA report. It is meant for IG maintainers and not for IG implementers.

### FHIR email and Zulip - Places to ask questions
If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
This is true for all of our FHIR IGs.

### Looking for a specific standard?
Please visit [medcomfhir.dk](https://medcomfhir.dk/ig)
