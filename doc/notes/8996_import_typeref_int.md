---

This work is licensed under the Creative Commons CC0 License

---

# Import Typeref
### xtUML Project Implementation Note


1. Abstract
-----------
When converting a project model with shared types, we are over-
zealous about cleaning up and delete shared typerefs.  We need
to keep these.

2. Document References
----------------------
[1] [8996](https://support.onefact.net/issues/8996) - Project import drops shared typeref  
[2] [8801](https://support.onefact.net/issues/8801) - MASL round trip test  

3. Background
-------------
We were considering using IPRs for shared types.  But in MASL we must
keep explicity Typerefs.  We were "luckily" failing to delete them until
we fixed them during the work adding a `defition` field to `S_UDT`.  Now
we successfully delete them incorrectly.

4. Requirements
---------------
4.1 Stop deleting imported typerefs.

5. Work Required
----------------
5.1 Stop marking imported typerefs as "tmp" in the population step.  
5.2 Stop deleting these types in the cleanup step.  

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Run the Import and Convert steps of [2].  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc

Branch name: 8996_import_typeref

xtuml/mc

</pre>

End
---

