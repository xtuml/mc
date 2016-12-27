---

This work is licensed under the Creative Commons CC0 License

---

# Specify Changes for Generator
### xtUML Project Design Note

1. Abstract
-----------
`pyxtuml` and `pyrsl` bring strength and (especially) flexibility over
the heritage RSL interpreter and database engine.  New features around
the persistence of association links are specified here.

2. Document References
----------------------
[1] [8907](https://support.onefact.net/redmine/issues/8907) Specify Changes for Generator  
[2] [Identifiers and Referentials](https://docs.google.com/document/d/1i33vZ9xPRMnAL-ESQ3bJ3U05CTvKL40h6GINX7poi_8/edit?usp=sharing) Identifiers and Referentials  

3. Background
-------------
[2] discusses the use of identifier and referential attributes in a model,
in modeling and in architecture.  Shlaer-Mellor has a long history of
formalizing associations using instance data -based identifiers and
referentials.

For persistence purposes, generator can provide an architectural alternative
to instance data -based identifiers and referentials.  Links can be
persisted independently of the class instances.

4. Requirements
---------------
The following requirements are potentially independent from one another.
They are also sequenced in an order perceived to be logical.  Each
requirement provides value.
4.1 `ROP`  
4.2 `relate`  
4.2.1 formalized relate  
4.2.2 unformalized relate  
4.3 `unrelate`  
4.3.1 formalized unrelate  
4.3.2 unformalized unrelate  
4.4 `LINK`  
4.4.1 dumping
4.4.1 loading

5. Analysis
-----------
5.1 Item 1  

6. Design
---------

7. Design Comments
------------------

8. Unit Test
------------

End
---

