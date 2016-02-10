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
MASLDSL spreadsheet?   
MASL to xtUML mapping spreadsheet?   

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
5.1 Item 1  
5.2 Item 2  
5.3 Item 3  

6. Design
---------
6.1 

- Requires special build of BP (8061) that has some enhancements for IPR data
- Relies on the repacked MC metamodel in the 8019_progen3 branch
- Relies on special model compiler from 8019_progen3 branch that handles imported packages
- captured in project maslin
- maslin component talks across the "serial" interface.  Specifically, it is designed to 
  recognize string lines from stdin that are formatted specially such that they can be split 
  into comma separated chunks that are then passed through the populate operation that uses
  key/value array styling
- The functionality of maslin is located inside the class ooapopulation.  The functionality
  is written in OAL.
- ooapopulation has a class-based operation that handles the incoming populate messages
  - populate is essentially a big switch/case statement that transfers control based on the 
      passed-in key
  - control is passed to operations named "transform< MASL Element >"
  - The transform operations then create the appropriate xtUML elements in the OOAofOOA.
      - This functionality relies on operations that correspond closely (in most cases) to
        operations on target OOA element classes.
      - The goal of this approach is to leverage the comprehensive (and known correct) functionality
        inside the OOAofOOA operations.  Notably, when one element is created in the OOAofOOA, it
        is often the case that other elements need to be created and related.  The OOAofOOA operations
        know how to do this.  Thus, maslin can copy in the activity bodies from the OOAofOOA and modify
        them as necessary when cases are found that the OOAofOOA operation is doing extra work that
        is either unneeded or wrong in a MASL conversion scenario.


7. Design Comments
------------------

8. Unit Test
------------

End
---

