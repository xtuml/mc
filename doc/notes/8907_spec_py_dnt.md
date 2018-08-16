---

This work is licensed under the Creative Commons CC0 License

---

# Specify Changes for Generator
### xtUML Project Design Note

1. Abstract
-----------
`pyxtuml` and `pyrsl` bring strength and (especially) flexibility over
the heritage RSL interpreter and database engine ("generator").  New
features around the persistence of association links are specified here.

2. Document References
----------------------
[1] [8907](https://support.onefact.net/redmine/issues/8907) Specify Changes for Generator  
[2] [Identifiers and Referentials](https://docs.google.com/document/d/1i33vZ9xPRMnAL-ESQ3bJ3U05CTvKL40h6GINX7poi_8/edit?usp=sharing) Identifiers and Referentials  

3. Background
-------------
[2] discusses the use of identifiers and referential attributes in a model,
in modeling and in architecture.  Shlaer-Mellor has a long history of
formalizing associations using instance data -based identifiers and
referentials.

For persistence purposes, the generator can provide an architectural
alternative to instance data -based identifiers and referentials.
Links can be persisted independently of the class instances.

4. Requirements
---------------
The following requirements are potentially independent from one another.
Also, they are sequenced in an order perceived to be logical.  Each
requirement provides value on its own.  Conceivably, each requirement
could be delivered independently.

4.1 `ROP`  
`ROP` specifies a relationship in the database schema.  Along with
`CREATE` statements, ROPs define the relational layout of the data.
Historically, most ROP statements specify the identifier of the
"participant" and the referential attributes of the "formalizer".
This must continue to be supported.  In addition, the ROP statement
in the generator dialect of SQL must support an empty key / foreign key
specification.  This is already the case and stated here for continuity.  

4.2 `relate`  
Recently (in 2015 or 2016) support for `relate` was added to the
pyrsl generator.  The first implementation may have simply become
a macro for the copying of key values into referential attributes.
This shall continue to be supported when a relationship is formalized.
However, a new requirement is to support the relate statement for
linking related class instances across association that are not
formalized.  

This added capability is useful even before the following requirements
are supported.  Without persistence, this capability is useful only
on runtime related objects, however, this is independently valuable.

4.2.1 formalized relate  
When an association is formalized (with a ROP statement having
ID / referential specification), the `relate` statement shall (continue
to) copy across the identifying attribute values into the corresponding
referential attributes.

4.2.2 unformalized relate  
The `relate` statement shall link instances across associations that
have not been formalized (empty ID / ref specification).  After a
relate statement on an unformalized association, a `select ... related by`
statement can successfully navigate to the related instance or set of
instances.

4.3 `unrelate`  

4.3.1 formalized unrelate  
When an association is formalized (with a ROP statement having
ID / referential specification), the `unrelate` statement shall (continue
to) clear the identifying attribute values from the corresponding
referential attributes.

4.3.2 unformalized unrelate  
The `unrelate` statement shall unlink instances across associations that
have not been formalized (empty ID / ref specification).  After an
unrelate statement on an unformalized association, a `select ... related by`
statement will "successfully fail" to navigate to the instance or set of
instances.  In such a case an empty reference or reference set will be
the result.

4.4 `LINK`  
A `LINK` (or similar) statement shall be supplied to support the persistence
of unformalized (ROPs with empty identifier / referential specifications)
and formalized associations.  This means that the link between related
instances must be maintained outside of the instance data itself even when
instances are formalized.

A suggested syntax follows:  
```
LINK R<number> ( "<keyletters>", index, "<keyletters>", index [, "<associative keyletters>", index ] );
```
where:  
`keyletters` are the unique key letters (or name) of a class  
`index` is an index (from some reference, perhaps the beginning of the
container) of the instance  

Other strategies exist.

4.4.1 dumping  
As is currently supported, instance data will be serialized (dumped) as
SQL `INSERT` statements.  Additionally, the links between the instances
of related classes shall be serialized as `LINK` (or similar) statements.
It is recommended that links are dumped following instance data.
This makes loading and linking the instances more convenient.

4.4.1 loading  
As is currently supported, instance data will be parsed (loaded) from
SQL `INSERT` statements.  Additionally, the links between the instances
of related classes shall be parsed as `LINK` (or similar) statements.

5. Analysis
-----------
5.1 Benefits  
The above listed features bring benefits.

5.1.1 Separation of Model from Architecture  
The first benefit is a separation of the application model data from
architectural artifacts.

5.1.2 Multi-View Class Diagrams  
There can be a need to associate a single set of classes in multiple
ways and not intermix these multiple "views".  For example, in the xtUML
metamodel, it would be beneficial to associate classes along _semantic_
boundaries (e.g. `Class` to `Attribute` across `R102`) and then to
associate them along _containment_ boundaries (e.g. `Class` contains
`State Machine`).

6. Design
---------

7. Design Comments
------------------

8. Unit Test
------------

End
---

