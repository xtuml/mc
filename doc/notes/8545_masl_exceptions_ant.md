---

This work is licensed under the Creative Commons CC0 License

---

# Convert/export MASL exceptions
### xtUML Project Implementation Note

1. Abstract
-----------
Exceptions (S_EXP) have been added to the xtUML meta-model to support MASL
exceptions. The MASL to xtUML converter (`m2x`) and xtUML to MASL exporter
(`x2m`) must now be extended to support exceptions.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8545 convert and export for exceptions](https://support.onefact.net/issues/8545)  
<a id="2.2"></a>2.1 [#8544 Add UI elements for exceptions](https://support.onefact.net/issues/8544)  
<a id="2.3"></a>2.1 [#8392 Java and C model compilers have mismatched enumeration types for ElementTypeConstants](https://support.onefact.net/issues/8392)  

3. Background
-------------
The model of MASL and the MASL parser are both ready to support exceptions.
`m2x` and `x2m` are the only components that need to be changed. Since the model
of MASL and the MASL parser operate between MASL text and lines of serial MASL,
exception support was possible before the meta-model change.

4. Requirements
---------------
4.1 The MASL to xtUML converter (`m2x`) shall support converting MASL models
containing exceptions to xtUML  
4.2 The xtUML to MASL exporter (`x2m`) shall support exporting xtUML models
containing exceptions to MASL  

5. Work Required
----------------
5.1 `m2x` changes  
5.1.1 Add case in ooapopulation `populate` operation to handle serial MASL
"exception" command  
5.1.2 Add operation `transformException` to create exceptions. This operation
follows the same pattern as `transformType` and puts exceptions in the same
packages as types depending on the visibility  
5.1.3 Add operation `Package_newException` (copied from OOA of OOA) to create
exceptions in a package  

5.2 `x2m` changes  
5.2.1 Create operation `exception2exception` to export exceptions. This
operation follows the exact same pattern as exporting types.  
5.2.2 Add call to `exception2exception` in `component2domain` operation  

5.3 Add `Descrip` attribute to Exception in the meta-model. This is analogous to
the same meta-model change done in the xtuml/bridgepoint repository as a part of
issue #8544 [[2.2]](#2.2)  
5.4 Re-gen the schema with the meta-model change  
5.5 Add enumerator EXCEPTION to ElementTypeConstants enumeration type. I had to
be careful to make sure to define the value the same as the vaule MC-Java
produces for BridgePoint  [[2.3]](#2.3)  

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Convert and import a MASL model with both public and private exceptions  
7.2 Verify that the exceptions exist in the imported project and that they are
in the proper packages (public exceptions in the "Shared" package, private
exceptions in the "types" package within the component)  
7.3 Export the project to a MASL domain, and verify that the exceptions are
exported properly (exceptions in the "Shared" package are public, exceptions in
the "types" package within a component are private)  

8. Code Changes
---------------
Branch name: 8545_masl_exceptions

<pre>

 model/maslin/gen/masl2xtuml.c                                                       |   4 ++--
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                                   | 111 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------
 model/maslin/gen/masl2xtuml_ooapopulation_class.h                                   |   5 ++--
 model/maslin/models/maslin/masl2xtuml/ooapopulation/ooapopulation.xtuml             | 106 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
 model/maslout/models/maslout/lib/xtuml2masl/maslout_imported/maslout_imported.xtuml |  60 ++++++++++++++++++++++++++++++++++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Datatypes/Datatypes.xtuml                         |   6 +++++
 model/mcooa/models/mcooa/ooaofooa/Domain/Exception/Exception.xtuml                  |  18 ++++++++++++++
 schema/sql/xtumlmc_schema.sql                                                       |   7 ++++--
 8 files changed, 280 insertions(+), 37 deletions(-)

</pre>

End
---
