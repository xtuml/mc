---

This work is licensed under the Creative Commons CC0 License

---

# Model element descriptions in MASL convert/load and export
### xtUML Project Design Note

1. Abstract
-----------
Model element descriptions must be populated from MASL at convert time, and they
must be emitted as comments during MASL export. This note documents the design
of this flow.

2. Document References
----------------------
<a id="2.1"></a>2.1 [serial MASL specification](../8073_masl_parser/8277_serial_masl_spec.md)  
<a id="2.2"></a>2.2 [#8361 Comment Support](https://support.onefact.net/issues/8361)  
<a id="2.3"></a>2.3 [#8362 Map comments to model element descriptions (internal issue)](https://support.onefact.net/issues/8362)  

3. Background
-------------
xtUML supports adding descriptions to many model elements. MASL, as a textual
language, does not have description fields like xtUML, but rather has support
for comments. It is desirable to be able to parse these comments when MASL is
converted to xtUML and store them in the description fields of the corresponding
model elements. On the output side, it is desirable to export the description
fields of model elements and place them appropriately as comments in the textual
MASL.

A MASL user edits MASL models in iUML and dumps them to textual MASL. iUML, like
BridgePoint provides description fields for model elements. The user would like
to use BridgePoint to continue to edit these models and for the description
fields to transfer. The user has modified the iUML to MASL dumper to output the
description fields as comment lines prepended with `//!`. The iUML dumper will
be taken into consideration to compile a list of supported MASL elements and the
comment format.

For the remainder of this note, the terms "documentation comments" and
"descriptions" shall be used (mostly) interchangeably to identify comments in the
MASL that are to be stored as documentation for a structural model element. This
is distinct from ordinary comments which can appear at any point in the
structural portion of the MASL or the activities.


4. Requirements
---------------
4.1 The serial MASL specification shall be extended to support model element
descriptions  
4.2 The MASL import parser shall recognize documentation comments and emit
appropriate lines of serial MASL  
4.2.1 Documentation comments shall be delimited in such a way to maintain
backwards compatibility  
4.3 The MASL to xtUML converter (`m2x`) shall interpret the serial MASL input
for documentation comments and store them in the description fields of the
correct model elements  
4.4 The xtUML to MASL exporter (`x2m`) shall produce serial MASL for description
fields of supported model elements  
4.5 The model of MASL shall interpret the serial MASL from the exporter and
output MASL with properly formed and placed comments for model elements  
4.6 A mapping table shall be produced which enumerates all supported MASL
model elements and specifies the location where the comments will be stored in
the xtUML model data (see section 6.6)  

5. Analysis
-----------
This feature affects four key components of the MASL flow: the parser, the
converter, the exporter, and the compiler. Each of these components are
isolated from one another, so they will be analyzed one by one below.

5.1 MASL parser

5.1.1 Grammar changes

The MASL grammar currently ignores all comments and whitespace. Rules will need
to be added to the grammar to recognize documentation comments.

5.1.2 Comment compatibility

The MASL language supports single line comments. To maintain compatibility with
the language, documentation comments will be delimited by a lexer rule that is an
extension of the lexer rule for comments. To state it a different way, it is
necessary for any MASL grammar that does not support documentation comments to
recognize them as ordinary comments and throw them away.

5.2 MASL to xtUML converter (`m2x`)

5.2.1 Description mapping (MASL to xtUML)

`m2x` shall map the descriptions received from the parser to the appropriate
description fields of xtUML model elements. This presents a challenge in a few
cases

5.2.1.1 Declaration and definition

Some MASL elements have both a declaration and a definition. MASL objects and
MASL types both have declarations before their definitions. Activities (states,
routines, and operations have declarations and definitions in separate files.
xtUML has no notion of declaration and definition because it is not procedural
as a textual language like MASL. Possible solutions to this problem are to
multiplex the description field and tag two separate descriptions -- declaration
and definition. Another solution is to combine the descriptions into one
description stored in the corresponding model element.

5.2.1.2 Identifiers

In xtUML, identifiers do not have a description field. This was a concern
because there would be nowhere to store the description of an identifier. After
analysis of the iUML dumper, it appears that identifiers do not hold
descriptions so it is safe to ignore this mapping.

5.3 xtUML to MASL exporter (`x2m`)

5.3.1 Description mapping (xtUML to MASL)

Complementary with section 5.2.1, `x2m` shall map `Descrip` fields in xtUML back
to MASL descriptions.

5.3.1.1 Declaration and definition

A solution to the declaration/definition problem would be to demultiplex the
description fields (if using a tagged approach) and output multiple MASL
descriptions. Alternatively, if the descriptions are consolidated (concatenated)
into one field, the description could be output with the model element
definition. A final solution could be to simply choose the description from the
declaration, or from the definition.

5.4 Model of MASL (`masl`)

The model of MASL must populate descriptions from the serial MASL and render
them to textual MASL

5.4.1 An option is to add a description to each MASL model class that can have a
description.

5.4.2 Alternatively, a new class `description` could be introduced and related
to each object that can have a description.

6. Design
---------

6.0 iUML (like xtUML) is not procedural and has no notion of declaration and
definition. Because of this, documentation comments from the iUML dumper will
always be duplicated for declaration and definition. Because of this property,
descriptions attached to declarations of model elements in MASL can safely be
ignored. Since the declaration and definition of activities are in separate
files, The documentation comments will be parsed and exported from the
declaration in the `.mod` or `.prj` file.

6.1 An element `description` is added to the serial MASL specification with the
first argument being the text of the description and the second argument being
the string tag. See [[2.1]](#2.1)

6.2 Parser enhancements

6.2.1 A lex rule is added to the MASL grammar to recognize model element
descriptions. This rule recognizes lines starting with `//!`. This satisfies
requirement 4.2.1 since the rule for regular comments is lines starting with
`//`.

6.2.2 A parse rule is added to read optional blocks of description comments and
add AST nodes. A reference to this rule prepends the parse rule for each model
element that can have a description. Both the declaration and definition rules
will be prepended by the parse rule.

6.2.3 A tree grammar (walker) rule is added to produce serial MASL from the
parsed descriptions according to the serial MASL specification. A reference to
this rule prepends the rule for each model element that can have a description.
In the case of model elements with a declaration and a definition, this rule
will only be added to the definition. In this way, it will be legal MASL to
place a documentation comment before a declaration, however no serial MASL will
be produced from it.

6.3 The MASL to xtUML converter consolidates descriptions for object and type
declarations and definitions and stores them in the `Descrip` fields of the
corresponding xtUML model element. After inspection of the iUML dumper, it
appears that descriptions are never added to declarations for objects and types,
so it is safe to consolidate them in one xtUML model element.

6.4 The xtUML to MASL exporter exports serial MASL based on `Descrip` fields of
supported model elements. No further processing (demultiplexing of descriptions)
is needed due to the decision in 6.3.  Activity definition files (states,
services, functions) are never modified by the MASL flow, so the descriptions
will be parsed and exported to the activity declarations.

6.5 A new class `description` is added to the model of MASL and related to the
`element` class. This decision gives maximum flexibility as a description can be
added to any MASL element should more be added to the supported list in the
future. `description` is modeled as follows:

```
element [element] () 1 ----- * description [description] ( text: string, tag: string )
```

In sections 6.3 and 6.4, it was decided that it is safe to consolidate
descriptions into one field for each model element. The model of description is
modeled with a one to many association and a tag attribute to provide us with
flexibility to add multiple descriptions to model elements should the need
arise.

6.6 Supported model elements mapping

The following are the supported MASL elements and the corresponding xtUML
classes in which the Descrip fields will be stored. Note that the MASL elements
are sometimes more generalized than the xtUML elements. For example, an activity
will map to SM_ACT if it is a state, but O_TFR if it is an operation, etc.

| MASL element | xtUML element                | Comments |
|--------------|------------------------------|----------|
| attribute    | Attribute (O_ATTR)           | N/A      |
| terminator   | Requirement (C_R)            | N/A      |
| activity     | Action (SM_ACT)<br>Operation (O_TFR)<br>Function (S_SYNC)<br>Executable Property (C_EP)| state<br>operation<br>domain service/function<br>terminator service/function |
| type         | Data Type (S_DT)             | N/A      |
| domain       | Component (C_C)<br>Component Reference (CL_IC) | domain<br>project domain |
| event        | State Machine Event (SM_EVT) | N/A      |
| object       | Model Class (O_OBJ)          | N/A      |
| project      | Component (C_C)              | N/A      |
| relationship | Association (R_REL)          | N/A      |

This mapping is informed by the iUML dumper source code


7. Design Comments
------------------

8. Unit Test
------------
8.1 For each of the nine supported MASL model elements:  
8.1.1 Add a description to the MASL text  
8.1.2 Convert and import the MASL models  
8.1.3 Verify that the comments are in the description field of that model
element  
8.1.4 Export the MASL models  
8.1.5 Verify that the descriptions have been rendered into the MASL

End
---

