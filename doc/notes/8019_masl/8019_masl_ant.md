---

This work is licensed under the Creative Commons CC0 License

---

# MASL Syntax, Import and Export
### xtUML Project Analysis Note

1. Abstract
-----------
BridgePoint support importing, editing and exporting xtUML/OAL.  This note
analyzes the addition of MASL Import and Export.

2. Document References
----------------------
[1] [Prototype a Project Generator](https://support.onefact.net/redmine/issues/8019)  
[2] [xtUML / MASL Mapping](https://github.com/cortlandstarrett/mc/doc/notes/8019_masl/xtUML_MASL_Mapping.md) 

3. Background
-------------
In this section, outline the important points relating to this issue/bug that
the reader would need to know in order to understand the rest of this
document.

4. Requirements
---------------
This section describes the requirements that need to be satisfied.  If there 
is an SRS, this section may simply refer to it.  Each requirement should be as 
short and simple as possible and must be clearly defined.

4.1 Item 1  
4.2 Item 2  
4.3 Item 3  

5. Analysis
-----------
5.1 I considered moving xtuml_package_to_masl_project into operations on MASL
classes.  However, this would cause OOAofOOA (xtUML MM) queries to live inside
the MASL model.  This seems bad.  
5.2 Consider a mapping comment or mapping attribute for each MASL class.  
5.3 Consider generating the grammar from this model.  
5.x Import assumes a populated MASL model.  
5.x Export assumes a populated MASL model.  

6. Work Required
----------------
6.1 Build the model of MASL.
6.1.1 Model a MASL Domain
6.1.2 Model a MASL Project
6.1.3 Extend MASL to support Components and Interfaces.
6.1.4 Add descriptions to the MASL classes.  
6.2 Add component, port, interface and message.  
6.3 Consider establishing identifiers and referentials for the classes.  This will
make populating possible by creating instances and batch relating.  It may have other
benefits, too.  
6.5 Get help building out the rest of the syntax model.
6.6 Write the Import queries.  These can be operations on the syntax model starting from the domain and project levels.  They will create and related instances in the xtUML MM.
6.7 Remove the TE_* stuff from the xtuml_package_to_masl_project query.  Use pure ooaofooa.

- MASL populator (from grammar)
- MASL to xtUML M2M (Import)
- xtUML to MASL M2M (Export)


7. Acceptance Test
------------------
In this section, list the tests that need to be performed in order to
verify that all the requirements are satisfied.

End
---

