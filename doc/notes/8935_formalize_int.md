---

This work is licensed under the Creative Commons CC0 License

---

# Relationship Formalization with Combined Referentials
### xtUML Project Implementation Note


1. Abstract
-----------
When a model with combined referentials, the mast2xtuml translator
crashes. This is due to the use of merged referential attributes being
part of the preferred identifier.

2. Document References
----------------------
[1] [8935](https://support.onefact.net/issues/8935) - masl2xtuml crashes  

3. Background
-------------

4. Requirements
---------------
4.1 

5. Work Required
----------------
5.1. 
  
6. Implementation Comments
--------------------------
6.1 The model provided by the user in the issue had a couple of
bugs.  Domain was capitalized, and the referentials for R1 used
the wrong end text phrase.

6.2 When neither functions nor terminators are included in a model, an
empty handle is detected during an unrelate of R4012.  A test was added
to `InterfaceReference_formalize`.

6.3 Unrelating R112 during the dispose of `O_REF` (`AttributeReferenceInClass`)
was triggering the empty handle detection.  Another stanza was put in place
to deal with the situation when there is only one `O_REF`.

6.4 In `removeDuplicateAttrs` the nested loop iterated over deleted
attributes.  We "pulled the carpet out from under ourselves".



`SimpleAssociate_isFormalized` has dead code.

Why does `SimpleAssociate_formalize` first unformalize?
Keith:  This makes sense in OOAofOOA, because you can reformalize from the UI.

simple test model is missing OIDA for Aid in B.

The following code looks dubious.
```
   select any oida related by other_attr->O_OIDA[R105];
   if ( not_empty oida )  // attribute is identifying
     self.ReferentialAttribute_migrateToBase( o_rattr:other_rattr );
   else
     self.Attribute_dispose( o_attr:other_attr );
   end if;
```
I do not think we will ever migrate a referential to a base attribute.  Can anyone think of a scenario?

It occurs to me that we may be combining referentials into the wrong one.
Aid and Aid; one of them is an identifier, and the other is not.

What is this?  (ooapopulate.processingIdentifier)
```
  if ( 0 == o_id.Oid_ID )
  ra.identifier1 = true;
  elif ( 1 == o_id.Oid_ID )
  ra.identifier2 = true;
  elif ( 2 == ooapopulation.processingIdentifier )
  ra.identifier3 = true;
  end if;
```

I am beginning to think the fundamental problem is in `combine_refs`.
We need to choose the best candidate ref to keep of the two supplied.
The best one to keep is the one that has an `O_OIDA`.

This poses a challenge for the way we loop through.

This is dubious code:  
```
    for each ra in ras
      // select the corresponding new referential attribute
      select any o_attr related by simp->R_FORM[R208]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]->O_ATTR[R102]->O_RATTR[R106]->O_ATTR[R106] where ( selected.Root_Nam == ra.attrName );
```
It will result in stopping at the first attribute with the name and never get another one.
Or it will get the "wrong one", because it gets the one that is not used as an identifier.
Hmm, it seems that refs that needed to be combined would all have their identifiers the same (if preferred).
But maybe not when other than the preferred.

Maybe it is because we formalize one association and then do post processing on its referential attributes.  And then we formalize another and do post processing...  ????

I am not sure about how `O_OIDA`s get set up.  It seems that they get set up by Attribute not by Ref.  So, the adding to Identifier may be superfluous.


I wonder if we could detect a complete formalization before doing any work.  [Yes, we can!  getID is smart enough to do this with the small newly added bit.]


Go back and fix getID.  The selection for the referentialAttributes is not quite correct, yet.


7. Unit Test
------------

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc   

Branch name: 8935_formalize

xtuml/mc

</pre>

End
---

