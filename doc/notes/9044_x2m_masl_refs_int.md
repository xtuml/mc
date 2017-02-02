---

This work is licensed under the Creative Commons CC0 License

---

# x2m and masl segfaults on referentials
### xtUML Project Implementation Note


1. Abstract
-----------
This work documents the implementation of importing new format marking data
into a project as part of MASL-to-xtUML conversion

2. Document References
----------------------
[1] [9044](https://support.onefact.net/redmine/issues/9044) Core dump in x2m  

3. Background
-------------
Users have reported core dumps in x2m (or masl) when exporting models
containing propagated referentials.  

4. Requirements
---------------
4.1 Export referentials without crashing.

5. Work Required
----------------
5.1 x2m  
In maslout, when establishing a referential, we traverse to the other side
of the relationship to find the referred to class and referred to attribute
(which is or will be an identifier attribute).  Currently, we search for
the referred to attribute by name using the name of the referential attribute.
This is not correct.  We will need to pass in the name of the base attribute
being referred to.
  
6. Implementation Comments
--------------------------
6.1 looping up multiple referentials  
In x2m, we were exporting only the first reference out of a reference
set.  This is now changed to loop over all references to support combined
referentials.

6.2 "symbolic" identifier  
When output an identifier set, the initial `indentifier` serial MASL
statement carried no values.  This makes it a challenge for the masl
model to differentiate a starting instruction from a closing instruction.
The first value is now set to "symbolic".

7. Unit Test
------------
7.1 Run the tests described in 9027.  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9044_x2m_masl_refs

xtuml/mc
 bin/x2m                                                         | Bin 695808 -> 695808 bytes
 doc/notes/9044_x2m_masl_refs_int.md                             |  68 ++++++++++++++++++++++++++++
 .../maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml |  16 ++++---
 3 files changed, 78 insertions(+), 6 deletions(-)

</pre>

End
---

