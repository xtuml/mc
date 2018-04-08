---

This work is licensed under the Creative Commons CC0 License

---

# Missing secondary identifier for combined referential attribute  
### xtUML Project Implementation Note


1. Abstract
-----------
A simple model with a combined referential loses a secondary identifier.

2. Document References
----------------------
[1] [9371](https://support.onefact.net/issues/9371) Missing secondary identifier for combined referential attribute  
[2] [9372](https://support.onefact.net/issues/9372) Error `UserEmptyHandleDetectedCallout O_ATTR masl2xtuml_O_ATTR_R114_unlink_is_defined_by`  

3. Background
-------------
When we combine referentials, we are careful to bring over most of
the good data (references and typing) from the attribute that is about
to be discarded.  However, we missed bringing over the identifiers.

The code still worked on many models, because we had a 50-50 chance
that we were combining _into_ the attribute carrying the identifiers.

4. Requirements
---------------
4.1 `m2x`  
Merge identifiers when combining referentials.  

5. Work Required
----------------
5.1 `m2x`  
In ReferentialAttribute_combine_refs:  

<pre>
   // Just like the refs, we need to bring over the IDs from the attribute
   // that is about to be disposed.
   select many other_o_oidas related by other_attr->O_OIDA[R105];
   for each other_o_oida in other_o_oidas
     self.Attribute_addToIdentifier( o_attr:o_attr, oid:other_o_oida.Oid_ID );
   end for;
</pre>

6. Implementation Comments
--------------------------
6.1 comment  
I found a bad comment in `Attribute_setType` and fixed it.

6.2 9372  
In each `getID` operation, we detect readiness by the existence of an
`O_RATTR` instance for each identifier RA instance (and go to baselessness
if there is no `O_RATTR` instance).  This does not consider the case where
a combined referential is propagated.  It is possible for the `O_RATTR`
instance to be in place but not every instance of `O_REF` is yet in place.
To check this, a new operation has been introduced that looks a bit further.
For each identifier RA, if the `O_RATTR` instance is in place, the `R_REL`
with the same number as the RA instance is selected through the `O_REF`.
This confirms that the relationship of the RA instance has been formalized.

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9370_2nd_id_1` and `9370_2nd_id_2`.  
7.1.2 See empty diff.
7.1.3 Run `masl_round_trip` on test `9372_R114`.  
7.1.4 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9371_2ndid

xtuml/mc
 bin/m2x                                                                          | Bin 683633 -> 695992 bytes
 bin/x2m                                                                          | Bin 683222 -> 691376 bytes
 doc/notes/9371_2ndid_int.md                                                      |  55 +++++++++++++++++++++++++++++++++++++++++
 model/maslin/models/maslin/m2x/assocFormalization/assocFormalization.xtuml       |   6 ++---
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml                 |  29 +++++++++++++---------
 model/maslin/models/maslin/m2x/referentialAttribute/referentialAttribute.xtuml   |  39 +++++++++++++++++++++++++++++
 model/maslin/models/maslin/m2x/simpleFormalization/simpleFormalization.xtuml     |   6 ++---
 model/maslin/models/maslin/m2x/subsuperFormalization/subsuperFormalization.xtuml |   6 ++---
 8 files changed, 121 insertions(+), 20 deletions(-)

</pre>

End
---

