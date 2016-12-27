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

simple test model is missing OIDA for Aid in B.

The following code looks dubious.
<pre>
   select any oida related by other_attr->O_OIDA[R105];
   if ( not_empty oida )  // attribute is identifying
     self.ReferentialAttribute_migrateToBase( o_rattr:other_rattr );
   else
     self.Attribute_dispose( o_attr:other_attr );
   end if;
</pre>


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

