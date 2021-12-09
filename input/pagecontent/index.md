### Implementation guide for MedCom FHIR Messaging

### Introduction

This implementation guide is provided by MedCom to describe the use of FHIR &reg;&copy; in message based exchange of data in Danish healthcare.

The implementation guide contains profiles in three areas

* A general messaging model to be used by all defined MedCom FHIR messages
* A hospital notification message for informing other healthcare parties about hospitalization of a patient
* A care communication message for exchange of various information between health organizations

The profiles are in general made open for additional content to allow further profiling for specific purposes defined by the communicating parties.

__Note:__ Be aware that entries in a message in general are unordered. Recipients of a message can therefore not assume any particular sequences of elements.

__Note:__ We intend to split the implementation guide into three separate packages in a future version.

For description regarding the transportation layer please refer to this guide:

English:

* [MedCom FHIR-message and enclosing envelope](Enclosing_envelope_for_FHIR-messages.html)

Danish:

* [MedComs FHIR-meddelelser og forsendelseskuvert](Forsendelseskuvert_for_FHIR-meddelelser.html)


### General references

All referenced resources within the message are contained in the entry list.

#### Content

This document presents MedCom messaging concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to core FHIR resources and datatype for use in MedCom messages
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for the messaging
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for the messaging context

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/hl7dk/dk-medcom)
* [Wiki](https://github.com/hl7dk/dk-medcom)
