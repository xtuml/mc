---

This work is licensed under the Creative Commons CC0 License

---

# MASL Syntax, Import and Export
### xtUML Project Design Note

1. Abstract
-----------
BridgePoint supports importing, editing and exporting xtUML/OAL.  This note
outlines a design for the addition of MASL Conversion/Import and Export.

2. Document References
----------------------
[1] [8019 Prototype a Project Generator primary issue](https://support.onefact.net/redmine/issues/8019)  
This is the original parent issue.  
[2] [8019 Analysis Note](https://github.com/xtuml/mc/doc/notes/8019_masl/8019_masl_ant.md)  
This is the analysis note written to cover at a high level the overal project.  
[3] [MASL to xtUML Mappings](https://docs.google.com/spreadsheets/d/1jsDcOvsGlUynQM9tfcd5jAYbdYyrO1uO7_f2f2UGBdQ/edit#gid=0)  
This document tracks notes on the mapping of MASL to xtUML and covers some of the conversion process.  
[4] [MASL serial (DSL)](https://docs.google.com/spreadsheets/d/1tPnk-JC5Idyhz2tUbgDGPlNbmHm2fZyA2cbf7IFYyVY/edit#gid=0)  
The MASL parser emits serialized MASL as comma separated string values.  
The following are xtUML models:  
[5] [Model of MASL](https://github.com/xtuml/mc/model/masl/)  
[6] [xtuml2masl (maslout) Model-to-Model (M2M) Transformation](https://github.com/xtuml/mc/model/maslout/)  
[7] [masl2xtuml (maslin) Model-to-Model (M2M) Transformation](https://github.com/xtuml/mc/model/maslin/)  
[8] [MC (model compiler) OOA (xtUML meta-model)](https://github.com/xtuml/mc/model/mcooa/)  
[9] [MC shared types and EEs](https://github.com/xtuml/mc/model/mcshared/)  
The following is a referenced issue:  
[10] [8230 Additional meta-model elements to store MASL](https://support.onefact.net/redmine/issues/8230)  

3. Background
-------------
See [2].  

4. Requirements
---------------
4.1-4.3 are stated in [2].  

4.4 Non-functional Requirements  
These requirements are design-specific requirements and thus stated here
rather than in the analysis note.  

4.4.1 MASL support shall be accomplished using model-based engineering and
an explicit model-driven architecture (MDA).  A model of the MASL syntax shall
be established as a basis for the work.  xtUML OAL activities shall be written
to perform model-to-model (M2M) transformations from/to xtUML to/from MASL.
The export functionality represents a model-based model compiler translating
xtUML to MASL.  

4.4.2 There shall be a strong segregation of template from query.  

4.4.3 Activities in the model of MASL shall be free of references to xtUML
or other non-MASL model elements.  

4.4.4 Natural (naming and descriptive attribute) identifiers shall be
established on MASL classes where appropriate.  Arbitrary (`unique_id`)
identifiers shall be avoided and used only as documented necessary.  

4.4.5 Use `TE_*` classes only as documented necessary (as for marking).  
[This requirement is modified to preclude the use TE_ classes.]  

5. Analysis
-----------
See [2].  

6. Design
---------
#### 6.1 Overall Flow  
In this project, MASL serves as both input and output.  On the input
flow, textual MASL is parsed, converted into xtUML and imported into
BridgePoint.  On the output flow, xtUML is converted into a MASL xtUML
instance population and then rendered into textual MASL.  

6.1.1 `parser`  
The parser is a Java application generated from an `antlr` grammar of
the textual MASL syntax.  A second grammar builds and walks an abstract
syntax tree (AST) of the language.  The parser serializes MASL into 
`MASLDSL` which is represented as comma separated strings.  

6.1.2 `masl2xtuml`  
`masl2xtuml (maslin)` receives as input MASLDSL.  The MASLDSL may
come directly from the parser or come from a populated model of the
syntax of MASL.  A model-to-model
transformation query creates instances of xtUML meta-model classes,
initializes their attribute values and links them across associations.
The result is an xtUML model representing the equivalent functionality
as the input MASL model.  

6.1.3 `xtuml2masl`  
`xtuml2masl (maslout)` selects against the xtUML meta-model and emits
a stream of MASLDSL across an interface to a model of MASL syntax.
This model-to-model transformation converts xtUML intances into MASL
represented as MASLDSL serialized strings.  

6.1.4 `mcmasl`  
The MASL syntax model receives the MASLDSL and populates instances of classes
in the model of MASL syntax.  Once populated, the MASL instance population
is validated and then rendered into textual MASL in files named according
to a set of rules capturing file naming conventions.  

#### 6.2 Model of MASL  

6.2.1 MASL Syntax Proper  
A model of MASL syntax [5] is built that captures in a class diagram the
structure of the MASL language.  For this issue only the structural MASL
(project, domain, class, state machine, type) is modeled.  This model
is informed by the MASL parser abstract syntax tree (AST).  The syntax
model of MASL is a step incrementally higher in abstraction than the AST,
but does not try to abstract the semantics; this is truly a model of syntax.  

6.2.2 MASL Types  
A class diagram of MASL Types is built that captures the typing system.
The typing system is largely independent of the rest of the syntax.
The connection occurs through `type references` leaving most of the
type system nicely modeled in its own diagram.  

At the present time, `type` and `typeref` are modeled more carefully
than the remaining model of the type system.  This is because until
activities are parsed, only `type` and `typeref` "touch" the structural
MASL.  No parsing, processing, validating or rendering will be done
with the detailed subordinate classes in the model of the type system.
In the initial design of the flow, aspects of typing including container
types (set, bag, sequence, array) and other type modifiers will be
stored in the xtUML model in proximity to the typed model elements
(probably description fields or other simple string properties).  

6.2.3 MASL Population, Marking and Persistence  
MASL population, marking (pragmas) and file packaging are modeled
independently of the syntax on their own class diagram.

6.2.3.1 Population  
The population of MASL through input serial string MASLDSL is a somewhat
separate concern from syntax.  A `population` class together with
`population` class-based operations on the MASL syntax classes coordinate
to create and link legal instances in the model of MASL.  An input stream
of string data (MASLDSL) is directed by the `population` class to the
correct classes for creation, initialization and linking of the MASL
syntax class instances.

An important function of the `population` class is to maintain context
for the input stream of MASLDSL.  A parent/child association is maintained
on `element` that enables the syntax population operations to know which
previously created model element is the container for the present model
element.  In a sense, this context is representing in the MASL model the
hierarchy of the parser abstract syntax tree (AST).

6.2.3.2 Marking  
A model of marking is depicted that relates the `pragma` class to all
`markable` model `element`s.  The parent/child relation on `element`
is important to allow the model to know which element is being marked,
because pragmas are arbitrary and can be attached to most of the syntax
classes in the model of MASL.  

As `pragma`s are encountered in the MASL input stream during `masl2xtuml`
processing, the plan of record is to store the pragma information into
the description (`Descrip`) fields of the marked model elements.  During
the `xtuml2masl` processing, the pragmas will be supplied to the down
stream model compilers.  In the future, pragmas or other marking artifacts
may warrant being modeled as classes.  An issue [10] is tracking
the potential need for `pragma` or other model elements to be added to
the xtUML meta-model.  

6.2.3.3 Persistence and File Packaging  
On the class diagram a class called `file` is linked to the
model elements using an association that directs rendered MASL into
files with names following an established convention.  

6.2.4 MASL Validation  
A `validate` operation is added to each MASL syntax class.  A hierarchical
invocation of these operations interrogates the instance population asserting
various constraints against the correct syntax of MASL.  An amount
of semantic rule checking also is run.  Incorrect MASL is detected during
validation.  MASL which passes validation has a high liklihood of syntactic
coherence.  

6.2.5 Rendering MASL  
One or more instance-based `render` operations are supplied to each MASL
syntax class.  These operations include templates and convert their
attribute values and links into syntactically consistent MASL.  Using
the `file` class described earlier, MASL is emitted into files adhering
to establish hierarchical organization and naming conventions.  

7. Design Comments
------------------
7.1 Inter-Project References for Class Diagrams  
It was deemed a critical requirement at the beginning of this project that 
class diagrams be shared across projects.  Thus, inter-project referencing
(IPR) for classes was enabled in an engineering build of BridgePoint.

7.2 Refactoring of Escher  
The MC-3020 model compiler (escher) contains a "naked" OOAofOOA, a class
diagram of the xtUML meta-model with all operations and state machines
stripped off.  The model compiler model also contained `docgen`, `Document`
and `MC EEs`.  This model has been refactored and divided into separate
projects.  Reuse is now possible, and build times are affected favorably.  

7.2.1 MCOOA  
With escher refactored, `maslin (masl2xtuml)` and `maslout (xtuml2masl)`
both independently can reference the `mcooa` (naked OOAofOOA).
`maslin` populates this model from MASLDSL [4].  `maslout` emits MASLDSL
based on queries of this model.  Both can share architectural
EEs defined in `mcshared` [9].  

7.3 Further Segregating M2M Transformations  
The xtUML meta-model (ooaofooa) and the model of MASL represent separate
subject matters.  Model-to-Model (M2M) Transformations span both subject
matters and seem to require selecting from a source model and creating,
relating and initializing into a destination model.  This broad span of
knowledge across subject matters is troublesome.

An option exists that retains a stricter subject matter separation.
By establishing a domain-specific communication protocol between the MASL
and xtUML domains, looser coupling and a greater level of insulation
can be maintained.  It is recognized that the M2M tranformation queries
must retain knowledge of class names in both domains, however, the
communication channel delegates the serialization of the classes in
one or the other domain and allows the M2M queries to remain ignorant
of the relational structure of the foreign domain.  The M2M queries
are housed one domain only.  The choice of home domain seems a pragmatic
issue.  In the case of xtUML and MASL, the xtUML domain is housing both
the `xtuml2masl` queries and the `masl2xtuml` queries.  This choice
is largely due to xtUML being the more complex component.  

The use of a string serialization protocol is an idea new to this team
and represents an area of further research.  As of this writing, the
technique seems to be working well enough to keep.  

8. Unit Test
------------
8.1 SAC Round Trip  
8.1.1 Convert and import SAC.  
8.1.2 See it in BridgePoint as a component model.  Observe
no shared types.  Observe types, functions, ports and classes to
match those of the MASL model.  
8.1.3 Export the model.  
8.1.4 Compare the exported SAC model with the imported model.  They
should be equivalent.  
8.2 MASL-idiom GPS Watch Round Trip  
8.2.1 Open MASL-idiom GPS Watch.  
8.2.2 Observe it.  
8.2.3 Export it.  
8.2.4 Convert and import the exported MASL.  
8.2.5 Observe the newly imported GPS Watch and see the functional
equivalent.  

End
---
