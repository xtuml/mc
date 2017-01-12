---

This work is licensed under the Creative Commons CC0 License

---

# Annotate MASL Models to Communicate to Import
### xtUML Project Implementation Note


1. Abstract
-----------
When converting MASL to xtUML for import into BridgePoint, leave
"bread crumbs" that can be found by the xtUML Import process to help
it know that this is a MASL model.

2. Document References
----------------------
[1] [8986](https://support.onefact.net/issues/8986) - nnotate MASL Models to Communicate to Import  

3. Background
-------------
There are a few things that need to happen to imported MASL models that
do not need to happen to all models.  However, a MASL-converted xtUML
model looks like any other valid xtUML model.  We need a channel through
which to communicate from the conversion utility `m2x` to the standard
xtUML Import wizard.

4. Requirements
---------------
4.1 Annotate converted MASL domains as such.  
4.2 Annotate converted MASL projects as such.  
4.3 Make annotated project interface formalizations consistent.  

5. Work Required
----------------
5.1 Add `masl_domain` to the package that contains a domain.  
5.2 Change `formalization` in interface requirements to `masl_formalization`.  
  
6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Domain  
* Convert `SAC_OOA`.  
* Search resulting `.xtuml` file and see `masl_domain`.  
7.2 Project  
* Convert `SAC_PROC`.  
* Search resulting `.xtuml` file and see `masl_project` and `masl_formalize`.  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc   

Branch name: 8986_annotate_masl

xtuml/mc
 bin/m2x                                                          | Bin 646657 -> 646657 bytes
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                |  10 ++++++----
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml |  12 ++++++++----
 3 files changed, 14 insertions(+), 8 deletions(-)

</pre>

End
---

