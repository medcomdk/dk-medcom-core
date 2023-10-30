>Note: This profile is developed to be part of a production trial of the communication between the general practitioner and municipal acute care team.

### Scope and use
This profile is a MedCom Core profile for media and is intended to represent relevant attachments for a variety cases including: 
* laboratory observations
* observations performed by a municipal acute care team 

Only an attachment of the permitted formats must be included. 
[Click here to see the permitted formats of an attachment](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-attachmentMimeTypes.html)

<!-- Only an attachment of the following formats must be included: 

* Adobe Portable Document Format (PDF)
* Graphics Interchange Format (gif)
* JPEG Image
* Portable Network Graphics (PNG)
* Tag Image File Format (tiff) -->

The attached file shall be base64-encoded and added to the element MedComCoreMedia.content.data
If the attached file is sent, it is a requirement that the ID and title of the attached file shall be sent.
The ID of the attachment shall be expressed using Media.identifier element.
The Media.content.titel element shall be used to express the titel of the attachment.