---

This work is licensed under the Creative Commons CC0 License

---

# Handle deferred activities
### xtUML Project Implementation Note

1. Abstract
-----------
After the change to store MASL actions in the `Action_Semantics` field, deferred
operations need to be revisited.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8507 Handle deferred activities](https://support.onefact.net/issues/8507)  
<a id="2.2"></a>2.1 [#8507 previous implementation note](8507_deferral_int.md)  
<a id="2.3"></a>2.3 [#8507 test](https://github.com/xtuml/models/tree/master/masl/test/8507_defer)  
<a id="2.4"></a>2.4 [#9269 Create a MASL modeling guide](https://support.onefact.net/issues/9269)  

3. Background
-------------
Before reading this note, go back and read the original implementation of this
feature [[2.2]](#2.2).

While analyzing this feature I expected that deferred operations would be
completely broken since we changed persistence scheme. Strangely, our round trip
test was passing for deferred operations. Looking into it further I found that
`m2x` was producing operation instances with no actions and OAL as the dialect.
This technically would work, however it is not quite correct. `x2m` also when
checking for deferrals was simply checking for the existence of an operation
with matching signature in each subtype. It should also check that there are no
actions in the supertype operation.

A few small changes are needed. `m2x` should set deferred operations to the
"None" dialect. `x2m` should check the supertype operation and set it as
deferred if:
* there are no actions or the dialect is null, and
* all the subtypes have an operation with matching signature.

To create a deferred operation, a user should create an operation with identical
signature in each subtype and set the dialect of the supertype operation to
"None".

4. Requirements
---------------
4.1 Round trip shall pass on the test case [[2.3]](#2.3)  
4.2 Deferred operations shall have "None" dialect set by `m2x`  

5. Work Required
----------------
5.1 Update `transformObjectFunction` to set deferred operations to "None"
dialect and add a convenience message in the action semantics field  
5.2 Remove `FILE` EE and its references from `x2m`  
5.3 Update check in `classop2objectop` to check for "None" dialect or empty
action semantics  

6. Implementation Comments
--------------------------
None

7. Unit Test
------------
7.1 masl round trip test on [[2.3]](#2.3)  

8. User Documentation
---------------------
Add documentation to the MASL modeling guide. An issue has been raised to create
this guide [[2.4]](#2.4) and a comment has been added to the issue to document
deferred activities.

9. Code Changes
---------------
Fork/Repository: leviathan747/mc  
Branch: 8507_defer  

<pre>

 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml  |   6 ++++++
 model/maslout/gen/CSV_bridge.c                                    |   1 -
 model/maslout/gen/FILE_bridge.c                                   |  36 ------------------------------------
 model/maslout/models/maslout/EEs/EEs.xtuml                        | 105 ---------------------------------------------------------------------------------------------------------
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml |   5 ++---
 model/maslout/models/maslout/maslout.xtuml                        |  24 ------------------------
 6 files changed, 8 insertions(+), 169 deletions(-)

</pre>

End
---

