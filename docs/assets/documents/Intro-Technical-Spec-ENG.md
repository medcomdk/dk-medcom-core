# Introduction to the Technical Content

> In case of discrepancies between the <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/" target="_blank">MedCom Core Implementation Guide (IG)</a>
 and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepandies.

The <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/" target="_blank">MedCom Core IG</a> describes five FHIR profiles, which can be seen below. 



<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-67v1{border-color:inherit;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-i91a{border-color:inherit;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-67v1">Profile</th>
    <th class="tg-67v1">Resource</th>
    <th class="tg-67v1">Describtion</th>
    <th class="tg-67v1">MustSupport elements</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-i91a">MedComCorePatient</td>
    <td class="tg-i91a">Patient</td>
    <td class="tg-i91a">Contains central information about a citizen or patient, when exchanging a information.</td>
    <td class="tg-i91a">Identifier (CPR-number)<br>Name<br>Address<br>Telecom<br>Managing Organization<br>Deceased or not</td>
  </tr>
  <tr>
    <td class="tg-i91a">MedComCoreOrganization</td>
    <td class="tg-i91a">Organization</td>
    <td class="tg-i91a">Information useful to identify an organization.</td>
    <td class="tg-i91a">Identifier (SOR-id)<br>Name</td>
  </tr>
  <tr>
    <td class="tg-i91a">MedComCoreEncounter</td>
    <td class="tg-i91a">Encounter</td>
    <td class="tg-i91a">A meeting between a healthcare professional and a patient.</td>
    <td class="tg-i91a">Encounter status<br>Encounter classification<br>Subject of the encounter<br>Episode of care identifier<br>Service provider organization</td>
  </tr>
  <tr>
    <td class="tg-i91a">MedComCorePractitioner</td>
    <td class="tg-i91a">Practitioner</td>
    <td class="tg-i91a">Information about a healthcare professional</td>
    <td class="tg-i91a">Name</td>
  </tr>
  <tr>
    <td class="tg-i91a">MedComCorePractitionerRole</td>
    <td class="tg-i91a">PractitionerRole</td>
    <td class="tg-i91a">The role of the healthcare professional</td>
    <td class="tg-i91a">References a practitioner</td>
  </tr>
</tbody>
</table>