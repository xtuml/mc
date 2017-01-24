---

This work is licensed under the Creative Commons CC0 License

---

# MASL Marking Import
### xtUML Project Implementation Note


1. Abstract
-----------
This work documents the implementation of importing new format marking data
into a project as part of MASL-to-xtUML conversion

2. Document References
----------------------
[1] [8980](https://support.onefact.net/redmine/issues/8980) m2x support for updated marking
[2] [8981](https://support.onefact.net/redmine/issues/8981) x2m support for updated marking
[3] [8951](https://support.onefact.net/redmine/issues/8951) marking editor
[4] [8801](https://support.onefact.net/redmine/issues/8801) MASL round trip test
[5] [8981 design note](https://github.com/xtuml/mc/doc/notes/8981_marking_dnt.md) MASL Marking Import and Export  
[6] [8981 implementation note](https://github.com/xtuml/mc/doc/notes/8981_marking_int.md) MASL Marking Export  

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
were used exclusively by `x2m`.  Now, they are needed by maslin.  To
share them, they have been moved to mcshared/functions.

7. Unit Test
------------
7.1 MASL Round Trip Test  
Run [4].

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  8980_marking
Fork: cortlandstarrett/bridgepoint  8980_marking

xtuml/mc

xtuml/bridgepoint

</pre>

End
---

