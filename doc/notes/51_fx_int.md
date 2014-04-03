---

Copyright 2012-2014 Mentor Graphics Corp.  All Rights Reserved. 

---

# Support Customized MCMC
### xtUML Project Implementation Note  


1.  Abstract
------------
The model compiler has been extended.  And the mcmc files have been
affected.


2.  History
-----------
None.

3.  Document References
-----------------------
[1] Issues 48 <https://github.com/xtuml/mc/issues/48>
    Reverse Reflixives in MCMC
[2] CQ

6. Work Required
----------------
6.1     RELATE
6.3.2   Convert backwards select statements to forward statements

7. Implementation Comments
--------------------------
q.assoc.pseudoformalize.arc
q.mc3020.arc
q.mc_metamodel.populate.arc
q.parameters.sort.arc
t.domain_enums.h
t.ee_ext.h
t.smt_sr.declare_ref.c
t.smt_sr.declare_set.c
t.smt_sr.subtypecheck.c

Why are these files included?
They are not being referred to.
They comes from a previous version of the MC.
Why are files from a previous version of the MC here?

fx.class.extent.c
fx_class.extent.c
t.domfacade.c

are not used.  What are they?

Will FX stop working while the mcmc is being built?

Can I teach FX how to make changes following a style that allows for mcmc
to be automatically built?

frag_util.arc - lots of added functions, one modified function
q.datatype.arc - added function


8. Unit Test
------------
8.1 Model compiler tests must pass.
8.2 docgen tests must pass.

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  51_fx

<pre>
 .../ooaofooa/ooaofooa/afunval/afunval.xtuml        |   280 +-
 57 files changed, 58868 insertions(+), 59679 deletions(-)
</pre>

End
---

