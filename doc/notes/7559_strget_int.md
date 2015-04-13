---

This work is licensed under the Creative Commons CC0 License

---

# Make strget Thread Safe
### xtUML Project Implementation Note  


1.  Abstract
------------
strget uses a set of static buffers for temporary storage.  Also static
is an index into these buffers.  Access to this index must be atomic.

2.  History
-----------
None.

3.  Document References
-----------------------
[1] Issues 7559 <https://github.com/xtuml/mc/issues/7559>
    strget is not thread safe  

6. Work Required
----------------
6.1     Mutex  
6.1.1   Add a mutex around the buffer manipulation in `strget()`.  
6.1.2   Use the ILB mutex, because it can be shared, and that feature
        is not used much.

7. Implementation Comments
--------------------------

8. Unit Test
------------
8.1 Model compiler tests must pass.  
8.2 string_return_test must pass with tasking enabled.  

9. Code Changes
---------------
Repository:  xtuml/mc
Fork:  cortlandstarrett/mc
Branch:  714_ipc

<pre>
 arc/t.sys_sets.c
</pre>

End
---

