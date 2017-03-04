---

This work is licensed under the Creative Commons CC0 License

---

# MASL polymorphic events and transition tables
### xtUML Project Implementation Note


1. Abstract
-----------
Polymorphic events are mishandled in a few ways.

2. Document References
----------------------
[1] [9187](https://support.onefact.net/redmine/issues/9187) MASL polymorphic events and transition tables  
[2] [9242](https://support.onefact.net/redmine/issues/9242) scope poly event with dot  

3. Background
-------------
The semantics of polymorphic events are mostly consistent between xtUML
and MASL dialects of Shlaer-Mellor.  However, the semantics are not being
transferred between the dialects quite right in certain scenarios.

The biggest hole is that polys are not handled when not assigned to
any transitions in a subtype.  BridgePoint generally expects a poly
to be assigned to a transition in the subtype state machine.  However,
the editor will (with some dancing) allow a poly to be received as an
event ignored in a subtype even with no other assignments to transitions.

Another gap is on the export side.  The parent object name does not
appear in the transition row.  This may not be strictly erroneous, but
the MASL reference guide states that the supertype object should be
named using dot notation in the transtion table.

During research into this issue, it was discovered that the action
language editor did not scope polymorphic events correctly.  [2] was
raised to track the work to address the action language editor.

4. Requirements
---------------
4.1 `m2x`  
4.1.1 Import polymorphic transitions even when not on new state transitions.
4.2 `x2m`  
4.2.1 Export MASL polymorphic event transition with fully qualified
polymorphic event names using dot notation.
4.2 `masl`  

5. Work Required
----------------
5.1 `m2x`  
5.1.1 Make the creation of an event robust to being created from
multiple points of discovery (event declaration or during state table
creation).  
5.1.2 Pass the given domain and object information from the serial
MASL into the population routines.  
5.1.3 When an event is not found while building the state table for a
class, assume that the event is a polymorphic event.  NOTE:  This is
an important assumption.  MASL models for the iUML dumper must dump
the supertypes first.  If this assumption proves false, there will be
significant work to cache the event and wait for the supertype class
to be created.  
5.1.3.1 Find the event by name in the named supertype class.  
5.1.3.2 Migrate the supertype event from `SM_SEVT` to `SM_PEVT`.
Clean up the previous SEMEs in the supertype.  
5.1.3.3 Create a new non-local event in the subtype.  Link it to the
polymorphic event created (or discovered) in the supertype.  

5.2 `x2m`  
5.2.1 Skip the output declararation of non-local events in subtypes.  
5.2.2 During the transition population, interrogate events to discover if
they are non-local.  If so, provide the supertype class name in the
transition serial MASL.  

5.3 `masl`  
5.3.1 Pass the domain and object name population parameters coming
from the serial MASL.  
5.3.2 When a transition event is not found in a state machine, look
for it in a supertype using the given supertype object name.  
5.2.3 Add scoping to masl cell template.  

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9187_poly`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9187_poly
Fork: cortlandstarrett/models  9187_poly

xtuml/mc
 doc/notes/9187_poly_int.md                                        | 108 ++++++++++++++++++++++++++++
 model/masl/gen/masl/t.cell.masl                                   |   2 +-
 model/masl/gen/masl_population_class.c                            |   5 ++-
 model/masl/models/masl/masl/cell/cell.xtuml                       |  41 ++++++++++++++++---
 model/masl/models/masl/maslpopulation/population/population.xtuml |   3 +-
 model/masl/src/masl/t.cell.masl                                   |   1 +
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml  | 111 +++++++++++++++++++++++++---
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml |  16 ++++++++
 8 files changed, 271 insertions(+), 16 deletions(-)

xtuml/models

</pre>

End
---

