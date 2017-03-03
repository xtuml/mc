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
The semantics of polymorphic events are consistent between xtUML and
MASL Shlaer-Mellor dialects.  However, the semantics are not being
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

4. Requirements
---------------
4.1 `m2x`  
4.1.1 Import polymorphic transitions even when not on new state transitions.
4.2 `x2m`  
4.2.1 Export MASL polymorphic event transition with fully qualified
polymorphic event names using dot notation.

5. Work Required
----------------

Stop creating the default SEMEs until the state machine is fully in place.
This way we can avoid needing to dispose of them upon poly migration.
Default all new events to be poly events?
Migrate them to SEVT when found in a transition.

Detect when an event is not found.

O.K.  So, I think the main issue is to know how to create the poly
and migrate the sevt to poly and deal with the SEMEs.
I would be nice to not have a bunch of SEMEs to discard when migrating
SEVT to PEVT.  Maybe it is not a big deal.
I think I will stick close to what is there... meaning the SEMEs need
to be cleaned up.  But it only happens when a poly is discovered.

Initialize as today.
When a poly transition is discovered (for the first time), migrate the parent SEVT to PEVT cleaning up.
Create the local SEVT, NLEVT and link to PEVT.
Initialize the SEMEs.
Let the transition fall into the following code.


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

xtuml/mc

</pre>

End
---

