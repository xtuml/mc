---

This work is licensed under the Creative Commons CC0 License

---

# Provide Data for MASL Editor
### xtUML Project Implementation Note


1. Abstract
-----------
This note describes work performed to provide structural MASL to the MASL
activity editor in a timely and efficient manner.

2. Document References
----------------------
[1] [8844](https://support.onefact.net/issues/8844) - Unhack package references  
[2] [8072](https://support.onefact.net/issues/8072) - Support package references in the MC  
[3] [GPS MASL example model](https://github.com/xtuml/models/tree/master/masl/gps)  

3. Background
-------------
In BridgePoint 5.8, MASL data is supplied to the MASL activity editor via
a user initiated domain export.  Until this operation is performed for the
first time, MASL activities cannot be validated.

The current xtuml2masl operation depends upon the prebuilder.  This is
convenient in that the prebuilder is already designed to supply all of the
needed model data.  However, the prebuilder performs an unnecessary step
that indeed uses the largest amount of time; it runs the OAL activity parser.

Note that activities will not

4. Requirements
---------------
4.1 

5. Work Required
----------------
5.1
  
6. Implementation Comments
--------------------------
6.1 
  
7. Unit Test
------------
7.1 

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc   

Branch name: 8797_scoop

xtuml/mc
 doc/notes/8844_unhack_packref_int.md                                                     |   152 +

xtuml/packaging
 build/extra_files/masl          | Bin 527785 -> 239623 bytes
 build/extra_files/x2m           | Bin 6512915 -> 685380 bytes

</pre>

End
---

