---

This work is licensed under the Creative Commons CC0 License

---

# Concrete Polymorphic Events
### xtUML Project Implementation Note


1. Abstract
-----------

2. Document References
----------------------
[1] [9283](https://support.onefact.net/redmine/issues/9283) Concrete Polymorphic Events  
[2] [OOA 96 Report](http://www.ooatool.com/References.html) OOA 96 Report  
[3] [OOA 96 Report](http://www.ooatool.com/References.html) OOA 96 Report  
[4] Executable UML - Mellor and Balcer  

3. Background
-------------
BridgePoint supports abstract polymorphic events as defined in [2] and [4].
iUML supports concrete polymorphic events as described in [3].

4. Requirements
---------------
4.1 Concrete Polys  
4.1.1 Support concrete polys through `masl_round_trip`.  

4.2 `m2x`  

4.3 `x2m`  

4.4 `masl`  

5. Work Required
----------------
5.1 Concrete Polys  
The primary design choice is to name concrete polys using the MASL naming
syntax.  The syntax includes the name of the class defining the concrete
polymorphic event.

The work to support abstract polymorphic events will need to be removed
in both `m2x` and `x2m`.

5.2 `m2x`  
Polys are detected by seeing an event for the first time while processing
the state transition table.  When this happens, look for the inherited
event in the subtype.  If it is there, use it.  If it is not, look for it
in the supertype and create the local inherited version of it.

5.3 `x2m`  
Find poly events by supertype class name and event name.  After finding
them, connect parameters as necessary.

5.4 `masl`  

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9254_1tomassoc`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9254_1tomassoc

xtuml/mc
 bin/masl                                                          | Bin 243848 -> 243848 bytes
 doc/notes/9256_1massoc_int.md                                     |  61 +++++++++++++++++++
 model/masl/gen/masl_population_class.c                            |  71 ++++++++++++++++++++++
 model/masl/models/masl/maslpopulation/population/population.xtuml |  31 +++++++++++++++++
 4 files changed, 163 insertions(+)

</pre>

End
---

