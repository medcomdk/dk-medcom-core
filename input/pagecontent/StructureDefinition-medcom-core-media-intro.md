### Scope and use
This profile is a MedCom Core profile for media and is intended to represent relevant attachments for a variety cases including: 
* laboratory observations
* observations performed by a municipal acute care team 

Only an attachment of the permitted formats must be included. 
[Click here to see the permitted formats of an attachment](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-attachmentMimeTypes.html)

The attached file **SHALL** be base64-encoded and added to the element MedComCoreMedia.content.data
If the attached file is sent, it is a requirement that the ID and title of the attached file **SHALL** be sent.
The ID of the attachment **SHALL** be expressed using Media.identifier element.
The Media.content.titel element **SHALL** be used to express the titel of the attachment.