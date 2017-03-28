---

This work is licensed under the Creative Commons CC0 License

---

# preferred unique referential attribute is missing 'unique' tag  
### xtUML Project Implementation Note


1. Abstract
-----------

2. Document References
----------------------
[1] [9366](https://support.onefact.net/issues/9366) preferred unique referential attribute is missing 'unique' tag  

3. Background
-------------

There are two problems here. In `x2m`, we were unconditionally suppressing the
"unique" tag on referential attributes. This design came from the assumption that
referentials could not be used as a base identifier. In the recursive
referential case, a referential could be its own base and so it makes sense to
allow it to be a "unique" (architecture provided) attribute.

Once this requirement was relaxed in `x2m` a problem was exposed in `m2x`. In
the xtUML-MASL idiom, the UDT "MASLunique" is mapped to "unique integer" in
MASL. Because the "unique"-ness is represented in the type itself and not a
modifier to an attribute, a situation is created where not all referential
attributes in a chain of reference should have the same type. One of the
referentials may be typed "MASLunique" while the rest should be typed "integer".
`m2x` is propagating the type throughout the entire recursive chain when a
recursive referential situation is created.

4. Requirements
---------------
4.1 `x2m` shall allow referential attributes to be "unique" if part of an
identifier  
4.2 `m2x` shall not propagate "MASLunique" type to non-"unique" referential
attributes  

5. Work Required
----------------

5.1 `x2m`

`attribute2attribute` in `x2m` was modified to allow the "unique" tag if the
attribute is not a referential _OR_ the attribute is part of an identifier

5.2 `m2x`

5.2.1 `ReferentialAttribute_collapse_ref` operation was modified to stop
propagating the data type of the base attribute to all the other referential
attributes in the chain

5.2.2 `ModelClass_removeDuplicateAttrs` operation was modified to set the type
of every referential attribute to the type of the original attribute parsed from
the MASL data. This ensures that the type is correct for every attribute.

5.2.3 The instance dumper was updated to be more accurate when outputting data
type id. Originally, the dumper was special cased to hard code the id for
`same_as<Base_Attribute>` for every referential attribute. When recursive
referentials were introduced, this had to be changed to allow referential
attributes to have their own type. The condition was changed to insert
`same_as<Base_Attribute>` only if the attribute was a referential _AND_ no type
was assigned. This worked for a while, but a simpler and more correct way has
been chosen. Now the condition only sets `same_as<Base_Attribute>` if the
attribute is a referential _AND_ the base attribute across R113 exists. This
check is better because it does not depend on an unconditional relationship
(R114) being unrelated at dump time and it allows `m2x` to output the right
thing even if every referential attribute is assigned a type.

6. Implementation Comments
--------------------------
None

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9366_uniqueid`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------

Fork: leviathan747/mc  
Branch: 9366_uniqueid  

<pre>

</pre>

End
---

