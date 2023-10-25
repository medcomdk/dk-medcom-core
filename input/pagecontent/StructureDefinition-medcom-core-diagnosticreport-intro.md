>Note: This profile is developed to be part of a production trial of the communication between the general practitioner and municipal acute care team.

#### Scope and usage
This profile is intended to be uses in  MedCom HomeCareObservation and MedCom's Laboratory standards. 

#### Attachments 
In MedComCoreDiagnosticReport it is allowed to include attachments. When sending an attachment diagnosticReport.media shall be used. The DiagnosticReport.media.link reference to MedComCoreMedia resource where the atachment shall be added. 
It is up to the user to assess when it is relevant to send an attachment. 
Only an attachment of the following formats must be included: 

* Adobe Portable Document Format (PDF)
* Graphics Interchange Format (gif)
* JPEG Image
* Portable Network Graphics (PNG)
* Tag Image File Format (tiff)

The attached file shall be base64ed and added to MedComCoreMedia.content.data element.
If the atached file are sent, it is a requirement that the ID and title of the attached file shall be sent.
The ID of the attachment shall be expressed using Media.identifier element.
The Media.content.titel element shall be used to express the titel of the attachment. 

Furthermore, MedCom recommended that the name of the author, as well as the time of creation, of the attached file be signed and sent with it.
To express the author of the attachemn the Media.operator shal be used.
The time of creation, of the attached file shall be expressed using Media.content.creation element  


#### Use of security labet on patient consent 
If a patient gives a negative consent to sharing the observation results with other than the general practitioner a security labe shall be used. 
This mean that the meta.security.code shall be R, and in the user interface, it shall be clearly stated that consent has been refused. 
