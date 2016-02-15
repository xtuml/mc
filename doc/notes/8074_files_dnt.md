---

This work is licensed under the Creative Commons CC0 License

---

# File Packaging for Rendered MASL Syntax
### xtUML Project Design Note

1. Abstract
-----------
The MASL model compiler must render MASL into files following a prescribed
convention.  This note documents the design of the file/packaging strategy.

2. Document References
----------------------
[1] [8074 Model of MASL Syntax](https://support.onefact.net/redmine/issues/8074)  
The following are xtUML models:  
[2] [Model of MASL](https://github.com/xtuml/mc/model/masl/)  
[3] Raven Basic SRS  

3. Background
-------------
MASL is parsed hierarchically.  It is modeled in an arbitrary network model
class diagram.  Associating model elements to files must be done explicitly,
because it directly falls out of neither hierarchy nor class diagram.  Thus,
this work explains how the model of file persistence is integrated with the
model of MASL syntax.

4. Requirements
---------------
4.1 Prescribed Conventions
Conventions are prescribed in an appendix to the Software Requirements
Specification.  They are repeated here for convenience.  

<pre>

Domain Model: <domain name>.mod
Domain Interface: <domain name>.int
 
Domain Service: <service name>.svc
Domain Function: <function name>.fn
Domain External: <external name>.ext (domain service with pragma external)
Domain Scenario: <external name>.scn (domain service with pragma scenario)
 
Object/Instance Service: <object kl>_<service name>.svc
Object/Instance Function: <object kl>_<function name>.fn
State Action: <object kl>_<state name>.al
 
Terminator Service: <terminator kl>_<service name>.tr
Terminator Function: <terminator kl>_<service name>.tr (yes, this is inconsistent with other functions!)
 
Project Model: <project name>.prj
Project Terminator Service: <domain name>_<terminator kl>_<service name>.tr
  
Also, if any of the services and functions have more than one definition
with the same name (but different signatures) the filename has an overload
number appended before the extension for the second and subsequent occurrences. 
For example:
  public service log ( message : in string );
  public service log ( message : in string, arg1 : in string );
  public service log ( message : in string, arg1 : in string, arg2 : in string );
 
would have files named log.svc, log_1.svc and log_2.svc respectively,
as per the order the definitions occur in the .mod file.
 
Also, a filename can be  overridden with a pragma filename("another_file.aaa")
after the declaration in the mod file, which trumps everything else
(we tend to do this for overloads, as it is less flaky)

</pre>

4.2 Rendering from Full Population  
We want the ability to render a project or a domain the face of a fully
populated system.  This means that we must be able to render on a fraction
of the data contained in a full instance population.

5. Analysis
-----------
5.1 Associating Files with Elements  
The first thought was was associate an instance of a `file` class with
each model element.  However, model elements are mapped to more than one
file.  For example, a domain is part of a project (`.prj` file) and also
part of a domain (`.mod` file).

5.2 `render` needs to know where to buffer  
It is when model elements are rendered that the correct buffer/file must
be in place.

5.3 multiple flavors of `render`  
Some classes in the syntax model of MASL have more than one `render`
operation.  Currently, there are `render`, `object.render_declaration`,
`attribute.render_name`, `activity.render_definition`,
`markable.render_marking`.

5.3 Grammar Queues  
The MASL grammar provides queues (and clues) to a reasonable strategy for
packaging files.  The grammar has the capability to parse individual
MASL files in isolation.  To support this, top-level production rule
targets (called "targets") have been established.  There is a reasonable
mapping between these grammar targets and specific elements within the
syntax model of MASL.

6. Design
---------
6.1 File  
Add `file` to the model of MASL.

6.2 Associations  
Associate `file` with the "target" elements that get packaged into
their own files.

7. Design Comments
------------------

8. Unit Test
------------
8.1 MASL-idiom GPS Watch  
Export the GPS Watch as MASL.  Visually inspect to see that the correct
packages is in place.

End
---
