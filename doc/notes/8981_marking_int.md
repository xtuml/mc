---

This work is licensed under the Creative Commons CC0 License

---

# MASL Marking Import and Export
### xtUML Project Implementation Note


1. Abstract
-----------
This work documents the implementation of importing new format marking data
into a project as part of MASL-to-xtUML conversion and supplying these marks
downsteam in the xtUML-to-MASL flow.

2. Document References
----------------------
[1] [8980](https://support.onefact.net/redmine/issues/8980) m2x support for updated marking
[2] [8981](https://support.onefact.net/redmine/issues/8981) x2m support for updated marking
[3] [8951](https://support.onefact.net/redmine/issues/8951) marking editor
[4] [8801](https://support.onefact.net/redmine/issues/8801) MASL round trip test
[5] [8981 design note](https://github.com/xtuml/mc/doc/notes/8981_marking_dnt.md) MASL Marking Import and Export  

3. Background
-------------
See [5].

4. Requirements
---------------
See [5].

5. Work Required
----------------
  
6. Implementation Comments
--------------------------
6.1 `*_get_path`  
`package_get_path`, `component_get_path` and `class_get_path` functions
were used in an early version of x2m to locate `.masl` activity files
with the models folder hierarchy.  This method has been supplanted by
storing the activities in the `Action_Semantics` field of the action
homes.  This work repurposed these routines to build "pathkey" strings.

6.2 Deferral  
While repurposing `*_get_path`, it was noted that `*_get_path` is referenced
in a detection of deferred operations.  Check on this.

6.3 `underscore_signature`  
I think this can be deleted.

6.4 `mark2pragma`  
Be sure to loop up the pramaitems.

6.5 XML tag removal  
Can I remove the XML tag searching now?

6.6 state machine, event  
I do not know how to name the pathkey.

6.7 `markable_name`  
Hmm, maybe I do need this.  An exception (`S_EXP`) and a function could
have the same name.  These live in packages; they could be in the same
package.  This would give the same pathkey!

Add `markable_name` parameter back to mark2pragma.

6.8 transtion row marking  
Both states and rows are marked in MASL.  
Also, `Non_Existent` is markable.

6.9 Identifiers  
I am not sure how we will mark identifiers.

7. Unit Test
------------

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  8981_marking
Fork: cortlandstarrett/bridgepoint  8981_marking

xtuml/mc

xtuml/bridgepoint

</pre>

End
---

