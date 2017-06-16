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
[3] [OOA 97](http://www.ooatool.com/References.html) OOA 96  
[4] Executable UML - Mellor and Balcer  
[5] [9275](https://support.onefact.net/redmine/issues/9275) Incomplete Formalisation on Reflexive  

3. Background
-------------
3.1 general  
BridgePoint supports abstract polymorphic events as defined in [2] and [4].
iUML supports concrete polymorphic events as described in [3].  This work
moves to a strategy of concrete polymorphic events using a name-based
strategy.  Inherited events are named with the MASL dotted syntax
(super.eventName).  The presence of the dot in the name is the key to
distinguishing events inherited from supertypes from events locally
defined within the (present) subtype.

For clarity, the following definitions will apply (which can be gleaned
from [2], [3] and [4].

3.2 abstract polymorphic event  
An _abstract polymorphic event_ is one which defines the "shape" of an event
but does not actually implement it in the present (supertype) state machine.
An abstract polymorphic event is received at exactly one subtype at exactly
one specific level somewhere below the supertype where it is defined.
Sibling subtypes or the children of sibling subtypes receive this abstract
polymorphic event at exactly one level, also.

3.3 concrete polymorphic event  
A _concrete polymorphic event_ is one which is defined and received in the
supertype state machine and also at any (and/or all) subtype and sibling
subtype state machines below the supertype.  A concrete polymorphic event
shows up in the state table of the supertype and all suptypes.  The event
must be explicitly transitioned, ignored or errored with `Cannot_Happen`
in each state machine in the hierarchy.

4. Requirements
---------------
4.1 Concrete Polys  
4.1.1 Support concrete polys through `masl_round_trip`.  
4.1.2 Enable the use of a name-based event strategy in the editor.  

4.2 `m2x`  
4.2 Import MASL dot syntax concrete polymorphic events into BridgePoint.  

4.3 `x2m`  
4.2 Export xtUML events to MASL using the MASL dot syntax.  

5. Work Required
----------------
5.1 Concrete Polys  
The primary design choice is to name concrete polys using the MASL naming
syntax.  The syntax includes the name of the class defining the concrete
polymorphic event.

The work to support abstract polymorphic events will need to be removed
in both `m2x` and `x2m`.  `m2x` will stop migrating events to poly
(`SM_SEVT`/`SM_LEVT` to `SM_PEVT`/`SM_NLEVT`).  `x2m` will stop looking
for polys.  All events are now local events.  Inherited events are
named with the MASL dot syntax (super.eventName).

5.2 `m2x`  
Polys are detected by seeing an event for the first time while processing
the state transition table.  When this happens, look for the inherited
event in the subtype.  If it is there (because it was already detected in
a prior transition row), use it.  If it is not, look for it in the
supertype and create the local inherited version of it.

Stop migrating events to poly (`SM_SEVT` to `SM_PEVT`).

Delete `StateMachineEvent_migrateToPoly`.

5.3 `x2m`  
Detect inherited events using the dot notation key.  On these events,
include the object name in the serialized MASL being sent to the `masl`
process.

Find poly events by supertype class name and event name.  After finding
them, connect parameters as necessary.

To determine whether an inherited event carries parameters, look for
parameters connected to the polymorphic event in the defining supertype.
This is exactly how it had been done with abstract polys, but with
abstract polys we could traverse directly up through the non-local
event and through `SM_PEVT`.  Now, the strategy must be to search for
it by supertype class name and event name.  This takes more iteration.

6. Implementation Comments
--------------------------
6.1 9275 Incomplete Formalization  
A bit of the work for resolving [5] is included.  The bit included is
not a complete solution, but is part of the solution that improves the
performance of the translation.

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9187_poly`.  
7.1.2 Run `masl_round_trip` on test `9280_miss_rows`.  
7.1.3 Run `masl_round_trip` on test `poly`.  
7.1.4 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9283_poly

xtuml/mc
 bin/m2x                                                                      | Bin 692080 -> 691664 bytes
 bin/x2m                                                                      | Bin 691376 -> 691376 bytes
 doc/notes/9283_poly_int.md                                                   |  89 ++++++++++++++++++++++
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml             |  85 ++++++++--------------
 model/maslin/models/maslin/m2x/simpleFormalization/simpleFormalization.xtuml |   9 ++++-
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml            |  47 ++++++++++++++++++----
 6 files changed, 147 insertions(+), 83 deletions(-)

</pre>

End
---

