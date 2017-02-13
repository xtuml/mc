---

This work is licensed under the Creative Commons CC0 License

---

# transition table generated for supertype with no state model
# NPE in properties of a state transition
### xtUML Project Implementation Note


1. Abstract
-----------
Bad creation and relation of `SM_TAH` in `m2x` and creating a state
transition table in `x2m` when we are not supposed to.

2. Document References
----------------------
[1] [9135](https://support.onefact.net/redmine/issues/9135) transition table generated for supertype with no state model  
[2] [9143](https://support.onefact.net/redmine/issues/9143) transition table generated for supertype with no state model  
[3] [9030](https://support.onefact.net/redmine/issues/9030) NPE in properties of a state transition  
[4] [9158](https://support.onefact.net/redmine/issues/9158) Introduce polycalc to MASL testing  

3. Background
-------------
We have been seeing an NPE in the properties view of a state
transition.  We found out why.  It is because instances of `SM_TAH`,
`SM_AH` and `SM_ACT` were related in the wrong order failing to
propagate referential identifiers.

Supertype classes may have a state machine with no states.  In such
a case, we need to avoid generating a (partial) transition table.

4. Requirements
---------------
4.1 Correctly create and relate `SM_TAH`, `SM_AH` and `SM_ACT`  
4.2 Correctly omit transtion tables for state machines having no states.  

5. Work Required
----------------
5.1 `m2x`  
In `m2x` `ooapopulation` when creating a transition, create the ACT
and AH first and relate them.  Then create and relate the TAH.

5.2 `x2m`  
Put a condition around the population of a transtion table.  If there
are no states (`SM_STATE`) in the state machine, then simply skip the
output of transtion table statements.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 SAC  
7.1.1 Import SAC.  
7.1.2 Click on a transition.  
7.1.3 Click in the properties view.  
7.1.4 Result:  no NPE  

7.2 polymorphic state machines  
7.2.1 Create a state machine by hand that has no states.  
7.2.2 Run Export MASL Domain.  
7.2.3 See that not transition table was created.  


8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9135_suptable

xtuml/mc
 bin/m2x                                                           | Bin 683472 -> 683472 bytes
 bin/x2m                                                           | Bin 687714 -> 695872 bytes
 doc/notes/9135_9143_9030_TAH_suptable_int.md                      |  79 ++++++++++++++++++++++
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml  |   8 +++---
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml |   9 +++++--
 5 files changed, 90 insertions(+), 6 deletions(-)

</pre>

End
---

