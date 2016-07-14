---

This work is licensed under the Creative Commons CC0 License

---

# 8287 Add Instance Reference Set Addition
### xtUML Project Implementation Note


1. Abstract
-----------
Currently the model compiler doesn't support addition operations on inst_ref_sets, and there is a need for conditionally selecting multiple sets and combining them for further processing. Current implementation requires selecting one set and operating over, then selecting the next set and performing duplicate operation on it. The direction is to offer set concatenation.

2. Document References
----------------------
<a id="2.1"></a>2.1 [MC C #8287](https://support.onefact.net/issues/8287) Issue link.  
<a id="2.2"></a>2.2 [Analysis Note](https://github.com/xtuml/mc/blob/master/doc/notes/8287_add_set_addition/8287_add_set_addition_ant.md)  

3. Background
-------------
Refer to [Analysis Note](#2.2).  

4. Requirements
---------------
Refer to [Analysis Note](#2.2).  

5. Work Required
----------------
5.1 Add setadd function to TE_SET
* Add attribute setadd to TE_SET class in ooaofooa.
* TODO: Insert Cort demonstration of generation HERE
* Add setadd implementation in arc/t.sys_sets.c
* Add setadd prototype in arc/c/t.sys_sets.h

5.2 Insert special addition handling for inst_set_ref types.  
* Modify arc/q.val.translate.arc to detect operators of inst_ref_set type and operation of addition
* Call [setadd](#5.1) at detection point

6. Implementation Comments
--------------------------


7. Unit Test
------------
7.1 Test set addition totals
* Create an object A with an attribute, number, that can be used for selection.
* Init 10 instances of object A with numbers set from 1 to 10.
* Select a subset 1 for an object A from instances with number > 5.
* Select a subset 2 for object A from instances with number < 5.
* Add subset 1 to subset 2 to produce subset 3.
* Ensure the cardinality of subset 3 is 9.


8. Code Changes
---------------
Branch name: 8287_add_set_addition

<pre>

arc/c/q.sys.singletons.arc
arc/c/t.sys_sets.h
arc/q.class.instance.dump.arc
arc/q.val.translate.arc
arc/t.sys_sets.c
model/escher/models/escher/components/ooaofooa/ooaofooa/Translation Extensions/set/set.xtuml

</pre>

End
---