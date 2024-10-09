
[Return](../../index.md)
# Introduction to the technical specification

**Table of Contents**
* [1 Content Overview](#1-content-overview)
* [2 Civil registration number and Replacement person identifier](#2-civil-registration-number-and-replacement-person-identifier)

> In case of discrepancies between the <a href="https://medcomfhir.dk/ig/core/" target="_blank">MedCom Core Implementation Guide (IG)</a>
 and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepancies.

## 1 Content overview
The <a href="https://medcomfhir.dk/ig/core/" target="_blank">MedCom Core IG</a> describes five FHIR profiles, which can be seen in the <a href="#Tab1">Table 1</a>. 


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-67v1{border-color:inherit;color:#002134;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-i91a{border-color:inherit;color:#333333;text-align:left;vertical-align:top}
</style>
<div style="overflow-x:auto;">
<table class="tg" id="Tab1">
<caption style="color:#002134; font-weight:bold;text-align:center"> Table 1: Overview of core profiles in MedCom Core standard</caption>
<thead>
  <tr>
    <th class="tg-67v1">Profile</th>
    <th class="tg-67v1">Resource</th>
    <th class="tg-67v1">Description</th>
    <th class="tg-67v1">MustSupport elements</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-i91a"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html" target="_blank">MedComCorePatient</a></td>
    <td class="tg-i91a">Patient</td>
    <td class="tg-i91a">Contains central information about a citizen or patient when exchanging information.</td>
    <td class="tg-i91a">id<br>Identifier (CPR-number or eCPR-number)<br>Name<br>Address<br>Telecom<br>Managing Organization<br>Deceased or not</td>
  </tr>
  <tr>
    <td class="tg-i91a"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html" target="_blank">MedComCoreOrganization</a></td>
    <td class="tg-i91a">Organization</td>
    <td class="tg-i91a">Information useful to identify an organization.</td>
    <td class="tg-i91a">id<br>Identifier (SOR-id)<br>Name</td>
  </tr>
  <tr>
    <td class="tg-i91a"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html" target="_blank">MedComCoreEncounter</a></td>
    <td class="tg-i91a">Encounter</td>
    <td class="tg-i91a">An interaction between a patient/citizen and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient/citizen.</td>
    <td class="tg-i91a">id<br>Encounter status<br>Encounter classification<br>Subject of the encounter<br>Episode of care identifier<br>Service provider organization</td>
  </tr>
  <tr>
    <td class="tg-i91a"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-careteam.html" target="_blank">MedComCoreCareTeam</a></td>
    <td class="tg-i91a">CareTeam</td>
    <td class="tg-i91a">A CareTeam is one or more professionals who plan to participate in the coordination and delivery of care for a patient or citizen.</td>
    <td class="tg-i91a">id<br>Name<br>Reference to an organization</td>
  </tr>
  <tr>
    <td class="tg-i91a"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html" target="_blank">MedComCorePractitioner</a></td>
    <td class="tg-i91a">Practitioner</td>
    <td class="tg-i91a">Practitioner resource is used to describe a healthcare professional or another actor involved in citizen or patient care.</td>
    <td class="tg-i91a">id<br>Name</td>
  </tr>
  <tr>
    <td class="tg-i91a"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html" target="_blank">MedComCorePractitionerRole</a></td>
    <td class="tg-i91a">PractitionerRole</td>
    <td class="tg-i91a">PractitionerRole resource used to describe the role of a healthcare professional or another actor involved in citizen or patient care.</td>
    <td class="tg-i91a">id<br>References a practitioner<br>Reference to an organization</td>
  </tr>
</tbody>
</table>
</div>


## 2 Civil registration number and Replacement person identifier
In MedComCorePatient it is required to include an identifier, that represents the patient identification number. In Denmark there are two types of identification numbers: 
The civil registration number (Danish: CPR), that is the official identification number and the replacement person identifier (E-CPR), which is used when the patient does not have an official registration number. 