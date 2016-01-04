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
[2] [8019 Analysis Note](https://github.com/cortlandstarrett/mc/doc/notes/8019_masl/8019_masl_ant.md)  
[3] [xtUML / MASL Mapping](https://github.com/cortlandstarrett/mc/doc/notes/8019_masl/xtUML_MASL_Mapping.md)  

3. Background
-------------
See [2].  

4. Requirements
---------------
4.4 Non-functional Requirements  
These requirements are design-specific requirements and thus stated here
rather than in the analysis note.  
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

6. Design
---------
**[The below is copied from the ant.  Turn it into design.]**  
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

7. Design Comments
------------------
If research carried out during this phase shows that a requirement stated in the
analysis note is infeasible or needs some modification, enumerate those changes
here. If there was no preceding analysis note, then this section documents any
deviations from the design as presented at the design review.

8. Unit Test
------------
**[the below was copied from the ant; make it a real test spec]**  
7.1 Round Trip  
7.1.1 Import an existing MASL model.  
7.1.2 Export the model.  
7.1.3 Compare the exported model with the imported model.  They
should be equivalent.  

End
---
