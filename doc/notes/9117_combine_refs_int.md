---

This work is licensed under the Creative Commons CC0 License

---

# ipv6 propagating but not fully combining
### xtUML Project Implementation Note


1. Abstract
-----------
Referentials propagate, but IPV6 reveals a case where the combination
does not occur correctly.

2. Document References
----------------------
[1] [9117](https://support.onefact.net/redmine/issues/9117) ipv6 propagating but not fully combining  
[2] [IPV6 application test model](https://github.com/xtuml/models/masl/test/ipv6) IPV6 application test model  

3. Background
-------------
Propagating and combining referentials is some of the deepest voodoo in
Shlaer-Mellor modeling.  This holds true during the conversion of MASL
to xtUML.  `batchFormalize` accumulates formalizations until all classes,
relationships and attributes are in place.  Then, formalization occurs
as identifiers are complete in each class.  This can be tricky when an
identifier includes a propagated referential.  Simple associations and
linked associations employed a technique to detect when referentials
were ready to be combined.  Sub/super was skipped when this was added.
It is now provided.

4. Requirements
---------------
4.1 Successfully _round trip_ IPV6.

5. Work Required
----------------
5.1 `subsuperFormalization::getID()`  
Short-circuit this routine until the referentials-as-IDs are all "ready".

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Successfully _round trip_ IPV6 [2].  
7.1.1 `masl_round_trip -d ipv6 -o outdir  
7.1.2 See that the mod files match.  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9117_combine_refs

xtuml/mc
 bin/m2x                                                                          | Bin 679376 -> 683472 bytes
 doc/notes/9117_combine_refs_int.md                                               |  63 +++++++++++++++++++++++++++++++++++++++++
 model/maslin/models/maslin/m2x/subsuperFormalization/subsuperFormalization.xtuml |  39 +++++++++++++++++++++++++
 3 files changed, 102 insertions(+)

</pre>

End
---

