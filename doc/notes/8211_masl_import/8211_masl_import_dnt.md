---

This work is licensed under the Creative Commons CC0 License

---

# Import MASL
### xtUML Project Design Note


1. Abstract
-----------
This note describes the design of the MASL import and model conversion tool.

2. Document References
----------------------
[1] [BridgePoint DEI #8211](https://support.onefact.net/issues/8211)  
[2] [BridgePoint DEI #8019](https://support.onefact.net/issues/8019)   
[3] [MASL to xtUML Mappings](https://docs.google.com/spreadsheets/d/1jsDcOvsGlUynQM9tfcd5jAYbdYyrO1uO7_f2f2UGBdQ/edit#gid=0)  
This document tracks notes on the mapping of MASL to xtUML and covers some of the conversion process.  
[4] [MASL serial (DSL)](../8073_masl_parser/8277_serial_masl_spec.md)  
The MASL parser emits serialized MASL as comma separated string values.  
The following are xtUML models:  
[5] [Model of MASL](https://github.com/xtuml/mc/model/masl/)  
[6] [masl2xtuml (maslin) Model-to-Model (M2M) Transformation](https://github.com/xtuml/mc/model/maslin/)  
[7] [8230 Additional meta-model elements to store MASL](https://support.onefact.net/redmine/issues/8230)  

3. Background
-------------
Users with a history of application modeling using Modified Action Syntax Language (MASL) wish to be
able to import their MASL models into BridgePoint, modify the models, then export them as MASL instead
of xtUML in order to use MASL-based model compilers.  

This note focuses on the conversion of MASL models (which includes both structural and semantic
information) into xtUML and import of the converted model data into BridgePoint.  

The project is broken into two major phases.  Here we discuss only Phase 1, which handles only the 
structural model conversion and import.  

4. Requirements
---------------
4.1  Item 1  
4.2  Item 2  
4.3  Item 3  

5. Analysis
-----------
5.1 MASL convert's primary work is a model to model transformation that reads MASL information
  and creates xtUML OOAofOOA model elements.  The creation of new OOAofOOA model elements is 
  one of the primary functions of the BridgePoint tool itself.  This functionality is modeled 
  as OAL inside the OOAofOOA, mostly as class operations on the OOA classes.  It makes sense
  to leverage the knowledge inside this existing functionality as much as possible as we 
  model the functionality of MASL to OOAofOOA transformation.    
5.1.1  The goal of this approach is to leverage the comprehensive (and known correct) functionality
  inside the OOAofOOA operations.  Notably, when one element is created in the OOAofOOA, it is often 
  the case that other elements need to be created and related.  The OOAofOOA operations know how to 
  do this.  Thus, maslin can copy in the action bodies from the OOAofOOA operations and modify them 
  as necessary when cases are found that the OOAofOOA operation is doing extra work that is either 
  unneeded or wrong in a MASL conversion scenario.


5.2 Item 2  
5.3 Item 3  

6. Design
---------
6.1  The project in the `mc` repository shall be named `maslin`.  It shall have a component
  inside named `masl2xtuml`.  

6.2  The `maslin` component talks across the serial MASL interface.  Specifically, it is designed to 
  recognize string lines from stdin that are formatted specially such that they can be split 
  into comma separated chunks that are then passed to the `populate` messsage.   

6.3  This project requires a special build of BridgePoint (branch `8061_ipr_classes`) that has some 
  enhancements for IPR data which are leveraged in the separate mc projects to isolate domain-specific
  areas of the xtuml/masl M2M transformations.   
6.3.1  This work relies on the special model compiler from the `8019_progen3` branch that handles 
  imported packages.   

6.4  The functionality of `masl2xtuml` is primarily located inside the class `ooapopulation`.  The functionality
  is written in OAL.   
6.4.1  `ooapopulation` has a class-based operation that handles the incoming `populate` messages   
6.4.2  `populate` is essentially a big switch statement that transfers control to element-specific transform 
  functions   
6.4.3  Control is passed to operations named `transform< MASL Element Type>`  
6.4.4  This functionality relies on operations that correspond closely (in most cases) to operations on 
  target OOA element classes.   


7. Design Comments
------------------

8. Unit Test
------------

End
---

