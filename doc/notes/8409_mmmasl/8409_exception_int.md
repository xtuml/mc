---

This work is licensed under the Creative Commons CC0 License

---

# Exception Support in xtUML Meta-Model
### xtUML Project Implementation Note

1. Abstract
-----------
Add _exception_ to xtUML.

2. Document References
----------------------
[1] [associated analysis note](./8409_pragma_exception_ant.md)  
[2] [model of exception - 8497](https://support.onefact.net/issues/8497)
[3] [parent meta-modeling issue - 8409](https://support.onefact.net/issues/8409)
[4] [Raven Production meta-model changes - 8467](https://support.onefact.net/issues/8467)

3. Background
-------------
Exceptions are added to the xtUML meta-model as a starting point for
more support and as a place-holder for MASL exceptions.

4. Requirements
---------------
See [1].

5. Work Required
----------------
5.1 In `ooaofooa`, add `Exception` to `Domain` package.  
5.2 Link it to `PE_PE`.  
5.3 In `mcooa`, add `Exception` to `Domain` package.  
5.4 Link it to `PE_PE`.  
5.5 Update the schema (mc/schema/xql/xtumlmc_schema.sql).  
5.6 Update the notes.  

6. Implementation Comments
--------------------------

7. Unit Test
------------

8. Code Changes
---------------
Branch name: xtuml/mc:8409_java2
             xtuml/bridgepoint:8409_java2

<pre>

xtuml/bridgepoint
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Domain/Domain.xtuml        |  24 +++++
 .../models/org.xtuml.bp.core/ooaofooa/Domain/Exception/Exception.xtuml             | 106 ++++++++++++++++++++++
 .../org.xtuml.bp.core/ooaofooa/Packageable Element/Packageable Element.xtuml       | 186 ++++++++++++++++++++++++++++++++++++++-
xtuml/mc
 doc/notes/8409_mmmasl/8409_exception_int.md                                     |  62 ++++++++++++++
 doc/notes/8409_mmmasl/8409_pragma_exception_dnt.md                              |   4 +-
 model/mcooa/models/mcooa/ooaofooa/Domain/Domain.xtuml                           |  24 ++++++
 model/mcooa/models/mcooa/ooaofooa/Domain/Exception/Exception.xtuml              | 106 ++++++++++++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Packageable Element/Packageable Element.xtuml | 186 +++++++++++++++++++++++++++++++++++++++++-
 schema/sql/xtumlmc_schema.sql                                                   |   5 ++

</pre>

End
---

