---

This work is licensed under the Creative Commons CC0 License

---

# OAL to MASL Translation
### xtUML Project Analysis Note

1. Abstract
-----------
OAL and MASL are action languages.  MASL is a superset of OAL supporting
all of the functionality of OAL and more.  OAL "easily" maps onto MASL.
There is a significant body of intellectual property (IP) shared in the
form of xtUML/OAL models.  It would be of significant benefit to the MASL-
modeling community to have access to MASL versions of these xtUML/OAL models.
This note outlines a plan to convert OAL to MASL.  Such a converter/conversion
enables xtUML/OAL IP to be accessed by the MASL community.

2. Document References
----------------------
[1] [8257 OAL to MASL](https://support.onefact.net/issues/8257) parent issue tracking this work  

3. Background
-------------
options
1) grunt RSL translator based off of mc3020
2) extent masl and maslout, populate via SMASL
3) convert grammar to xtUML class diagram; populate via SMASL
4) do all within Xtext/AST domain

4. Requirements
---------------
4.1 [6 - E1] The MASL activity editor shall support syntax highlighting

5. Analysis
-----------
BridgePoint edits Shlaer-Mellor Executable UML models by supporting a

### 5.1 Interfacing a MASL Activity Editor into the Structural BridgePoint Editor

### 5.2 File System API  
The primary interface between the structural (graphical) editor and the

6. Work Required
----------------
The following work assumes the strategy of 5.1.3 above (Persisted Structural
MASL), using the file system for synchornization (5.2 File System API) and
declaring the structure is king (for now).
 
6.1 Highlight syntax on all MASL statements.

7. Acceptance Test
------------------
Acceptance test will be defined in the Design Note.

End
---

