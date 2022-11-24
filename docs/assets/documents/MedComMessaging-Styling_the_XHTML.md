# Styling the XHTML

As descibed in <a href ="http://hl7.org/fhir/R4/narrative.html#css" target="_blank">Styling the XHTML in FHIR R4</a> the XHTML fragment in the narrative **MAY** be styled in different ways, however, MedCom recommends the following, meaning that an implementer 
* **SHOULD** use XHTML in a boiled down version specified here: [MedCom recommended styles](#medcom-recommended-styles)
* and **SHOULD NOT** use XHTML styles outlined here: [Not-MedCom recommended styles](#not-medcom-recommended-styles)

This version of <a href ="http://hl7.org/fhir/R4/narrative.html#css" target="_blank">the original similar page</a> is intentionally only adjusted to point out the above recommendations and corrected the words MAY and SHOULD to follow the standard style of how MedCom's Governance is expressed using upper case bold versions of **MAY** and **SHOULD** where needed.

MedCom has for this narrowed down the example provided by HL7 FHIR <a href ="https://www.hl7.org/fhir/basic-example-narrative.html" target="_blank"> Example </a>
MedCom has no intention of explaining the further use of XHTML as the use of it **SHOULD** follow the general guidelines pointed out by the general HL7 FHIR specification of the actual version.

You can find MedCom's example <a href="MedComMessaging-Styling_the_XHTML-example.xml" target="_blank">here</a>

## MedCom recommended styles

|xhtml-tag|meadning|xhtml-style|
|:---|:---|:---|
| bold | Bold Text | { font-weight: bold  } |
| italics | Italics Text | { font-style: italic  } |
| underline | Underlined Text | { text-decoration: underline  } |
| strikethrough | Strikethrough Text | { text-decoration: line-through  } |
| left | Left Aligned | { text-align : left  } |
| right | Right Aligned | { text-align : right  } |
| center | Center Aligned | { text-align : center  } |
| justify | Justified | { text-align : justify  } |
| border-left | Border on the left | { border-left: 1px solid grey  } |
| border-right | Border on the right | { border-right: 1px solid grey  } |
| border-top | Border on the top | { border-top: 1px solid grey  } |
| border-bottom | Border on the bottom | { border-bottom: 1px solid grey  } |
| arabic | List is ordered using Arabic numerals: 1, 2, 3 | { list-style-type: decimal  } |
| disc | List bullets are simple solid discs | { list-style-type: disc  } |
| unlist | List with no bullets | { list-style-type: none  } |

## Not MedCom recommended styles

|xhtml-tag|meadning|xhtml-style|
|:---|:---|:---|
| little-roman | List is ordered using little Roman numerals: i, ii, iii | { list-style-type: lower-roman  } |
| big-roman | List is ordered using big Roman numerals: I, II, III | { list-style-type: upper-roman  } |
| little-alpha | List is ordered using little alpha characters: a, b, c | { list-style-type: lower-alpha  } |
| big-alpha | List is ordered using big alpha characters: A, B, C | { list-style-type: upper-alpha  } |
| circle | List bullets are hollow discs | { list-style-type : circle  } |
| square | List bullets are solid squares | { list-style-type: square  } |

Note: for testing purposes, there will be example resources that includes all of these styles. It is also available as XHTML and a standard stylesheet that includes all of these styles. Use of styles not on this list will require an arrangement between producing and consuming systems.

Authoring systems **MAY** refer to additional classes, but cannot rely on the fact that they will be supported. If the additional classes are critical for safe rendering, trading partner agreements will be required.

Authoring systems **MAY** also use internal styles using the style attribute. This has the advantage of not depending on external interpretation, but also has the side effect of making content more difficult to manage when rendering, so applications should use this approach with care.

Authoring systems **MAY** fix the following styling aspects of the content:

bold, italic, underline, strikethrough
font color, family and size
background color, text alignment
whitespace interpretation
ordered list number format (since it may be referred to in text)

These style properties are specified in-line using the style attribute. Rendering systems **SHOULD** respect any of these rendering styles when they are specified in the style attribute, although appropriate interpretation is allowed in certain contexts (e.g. a low-contrast display for dark rooms or a high-contrast display for the visually impaired may adjust colors accordingly).

Note that rendering systems can ignore or override any of the internal or external styles described above, but **SHOULD** be careful to ensure that this is only done in the context of well-maintained trading partner agreements, as altering the presentation of the text may create clinical safety issues.

Authors **MAY** specify additional styles and style properties as specified in the CSS specification, but these are extensions to this specification and renderers are not required to heed them. It **SHOULD** be safe to view the narrative without these additional styling features available.

Note that there are additional rules around styling for documents presentation.
