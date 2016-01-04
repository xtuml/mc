---

This work is licensed under the Creative Commons CC0 License

---

# MASL Syntax, Import and Export
### xtUML Project Analysis Note

1. Abstract
-----------
BridgePoint supports importing, editing and exporting xtUML/OAL.  This note
analyzes the addition of MASL Import and Export.

2. Document References
----------------------
[1] [8019 Prototype a Project Generator](https://support.onefact.net/redmine/issues/8019)  
[2] [xtUML / MASL Mapping](https://github.com/cortlandstarrett/mc/doc/notes/8019_masl/xtUML_MASL_Mapping.md)  
[3] [MASL Activity Editor](https://support.onefact.net/redmine/issues/8xxx)  
[4] [MASL Grammar](https://support.onefact.net/redmine/issues/8xxx)  

3. Background
-------------
MASL is a modeling language inspired by the Action Specification Language
used in a heritage UML tool.  MASL supports a rich syntax for encoding
Shlaer-Mellor (S-M) model activities, and it also expresses structural
S-M.  The language can be parsed to populate a 1999 era version of the
S-M meta-model.  As of 2015, MASL is not fully supported in any graphical
model editing tool.  

MASL models can be edited in a heritage UML editor.  However, activities
are maintained as plain text which is not model aware in any syntactic
or semantic manner.  A custom extractor has been produced by a user to
render MASL through a C++ API in a heritage editor.  This has been the
MASL operating mode for quite some time (years).  

In 2014, BridgePoint became the first fully open-source (Apache 2.0) UML
editor, interpreter and translator to support all of Shlaer-Mellor xtUML
functionality.  BridgePoint represents the tool most ideally and practically
positioned to support graphical S-M modeling with MASL activities and
MASL persistence.  

A syntax-highlighting and xtUML-aware MASL activity editor is
being developed under a separate issue [3].  
Interpretive model execution of MASL activities is outside the scope
of this analysis.  

4. Requirements
---------------
4.1 MASL shall be converted to xtUML (and Imported into BridgePoint).  
4.1.1 Structural MASL shall be loaded as xtUML metamodel instances.  
4.1.2 MASL activities shall be stored as strings in xtUML action homes.
MASL activities will be stored in such a way as to coexist with OAL
activities.  
4.1.3 A command line utility shall be supplied to support selection
of MASL models and conversion to MASL-extended xtUML.  

4.2 MASL shall be exported from MASL-extended xtUML models.  
4.2.1 xtUML structural elements shall be output as syntactically correct
MASL text.  
4.2.2 MASL activities shall be output as MASL activities
(unmodified) associated with the appropriate MASL structures.  
4.2.3 A user interface mechanism shall be supplied to trigger the export
of MASL from MASL-extended models.  
4.2.4 A command line interface mechanism shall be supplied to export
MASL from MASL-extended xtUML models.  

4.3 Editing xtUML Models Containing MASL  
4.3.1 Structural xtUML shall be edited normally.  
4.3.2 MASL activities shall be edited as text.  

4.4 Non-functional Requirements  
4.4.1 MASL support shall be accomplished using model-based engineering and
an explicit model-driven architecture.  A model of the MASL syntax shall be
established as a basis for the work.  xtUML OAL activities shall be written
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


5. Analysis
-----------
5.1 Import Flow  
5.1.1 An `antlr` parser will tokenize and parse MASL and populate an
abstract syntax tree (AST).  
5.1.2 Actions on the AST will invoke xtUML OAL class-based operations
of MASL classes to populate the syntax model of MASL.  
5.1.3 An xtUML function will perform a model-to-model transformation of
MASL to xtUML.  

5.2 Export Flow  
5.2.1 A function (`xtuml_component_to_masl_domain`) will perform
model-to-model transformation of xtUML to MASL.  
5.2.2 A function (`xtuml_package_to_masl_project`) will perform
model-to-model transformation of xtUML to MASL leveraging the function
that translates domains.  
5.2.3 A model-based model compiler will render MASL from the syntax
model of MASL.  `render` operations will "drill down" through the model
of the syntax generating hierarchically.  

5.3 Considerations  
5.3.1 Consideration was given to moving `xtuml_package_to_masl_project` into
operations on MASL classes.  However, this would cause OOAofOOA (xtUML MM)
queries to live inside the MASL model.  This seems bad, because it makes it
difficult to treat these models separately.  It would be nice to have the
MASL model in a package or component sepately from ooaofooa.  So, to start,
activities that must access multiple (meta-)models will be packaged as
functions.  
5.3.2 Consider generating the grammar from the model of MASL.  
5.3.3 Consider a mapping comment or mapping attribute for each MASL class.
Such a comment or attribute could be used to generate a mapping document.  
5.3.4 An ordering feature in the MC may be necessary.  It is required for
MASL activities, and we need to order some things in the project output.  
5.3.5 A future enhanced BridgePoint may store structural xtUML as MASL.  


6. Work Required
----------------
6.1 Build a model of MASL.  
6.1.1 Model a MASL Domain.  
6.1.2 Model a MASL Project.  
6.1.3 Extend MASL to support Components and Interfaces.  
6.1.4 Provide descriptions to the MASL classes.  
6.1.5 Establish identifiers and referentials for the classes using
naming and descriptive attributes.  Formalize the associations.
This will enable batch relate.  It may have other benefits.  

6.2 Add utility operations to the model of MASL.  
6.2.1 Add (generate?) `link` class-based operations to all formalizing
classes in relationships.  The `link` operations will (batch) relate
associated instances for the particular formalized association.  
6.2.2 Program a `populate` class-based operation for each MASL class to
create an instance of the class and initialize attribute values.  Return
a reference to the created instance.  In some cases, create subtype
instances.  
6.2.3 Provide a `validate` class-based operation for each MASL class to
check the correctness of the attribute values for each instance.  Query
for correct links to related classes.  Report deviations.  

6.3 Populate the model of MASL from the grammar abstract syntax tree (AST).  
6.3.1 Write a `maslpop` class-based operation for each MASL class.
`maslpop` actions will call `populate` operations.  [Maybe populate
serves as maslpop, too?]  
6.3.2 Invoke `maslpop` operations from the AST walker in the MASL parser.
See [4].  

6.4 Populate the model of MASL from xtUML.  
6.4.1 Program `xtuml_component_to_masl_domain` to populate the model of
MASL from xtUML for a selected component.  Query xtUML and populate MASL.
Use the `populate` and `validate` utility operations.  
6.4.2 Program `xtuml_package_to_masl_project` to populate the model of
MASL from xtUML for a marked configuration package.  Query xtUML and
populate MASL.  Use the `populate` and `validate` utility operations.
Leverage `xtuml_component_to_masl_domain`.  

6.5 Import Queries (MASL to xtUML)  
6.5.1 Program `masl_to_xtuml` to populate the xtUML meta-model from a
populated syntax model of MASL.  

6.6 Export Queries (xtUML to MASL)  
6.6.1 Build a set of templates for the syntax of MASL.  
6.6.2 Provide a `render` operation for each MASL class.  Use the templates
to establish plain text output.  Leverage `T::template`.  


7. Acceptance Test
------------------
7.1 Round Trip  
7.1.1 Import an existing MASL model.  
7.1.2 Export the model.  
7.1.3 Compare the exported model with the imported model.  They
should be equivalent.  

End
---

