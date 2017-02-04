---

This work is licensed under the Creative Commons CC0 License

---

# Subtype supertype ID issues in MASL flow
### xtUML Project Implementation Note


1. Abstract
-----------
The propagation and combination of refertials in m2x is not consistent.

2. Document References
----------------------
[1] [9090](https://support.onefact.net/redmine/issues/9090) Subtype supertype ID issues in MASL flow  

3. Background
-------------
Once x2m and m2x began to run without segfaulting, inconsistencies in
the model was noted.  In the case of [1], referentials are being added
to extra IDs.

4. Requirements
---------------
4.1 Import a sub/super model with propagated and combined referentials.

5. Work Required
----------------
5.1 `m2x`  
In `batchFormalize`, we iterate through all subtypes processing a
single referential attribute.  This is incorrect.  Only the class
containing the referential attribute need be processed.  Passing
all subtypes has the effect of adding the referential to all IDs
present in all subtypes for an attribute of that name.  Instead,
of selecting and looping through subtypes, use the `o_obj` cached
in the referential attribute instance.
  
6. Implementation Comments
--------------------------
6.1 Why navigate when `o_obj` is cached in `referentialAttribute.o_obj`?  
It seems we could simplify other parts of this routine the same way.
Associatives may be fine as they are, but in the simple associations
we could save a traversal.  It might not be worth the change.

7. Unit Test
------------
7.1 Run the test number 4 described in 9027.  
7.1.1 The full round trip should pass, providing the same model.  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9090_subsupIDs

xtuml/mc
 bin/m2x                                                         | Bin 679312 -> 679376 bytes
 doc/notes/9090_subsupIDs_int.md                                 |  62 ++++++++++++++++++++++++++++
 .../maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml  |   8 +---
 3 files changed, 64 insertions(+), 6 deletions(-)

</pre>

End
---

