---

This work is licensed under the Creative Commons CC0 License

---

# Cannot use UDTs in terminators for MASL projects
### xtUML Project Implementation Note

### 1. Abstract

When trying to use a UDT in a terminator, it works fine in domains. However, in
a project, the types that are used come from the interfaces defined in the
domains. Because the names are used directly by the exporter, the resulting MASL
has type names that do not have domain qualifiers. There should be a check to
see if a type is referred to from another domain and automatically insert the
domain qualifier

### 2. Document References

<a id="2.1"></a>2.1 [#10183 Cannot use UDTs in terminators for MASL projects](https://support.onefact.net/issues/10183)  

### 3. Background

None.

### 4. Requirements

4.1 The MASL exporter shall add a domain qualifier to any type reference which
is used outside the domain in which it is defined.  
4.1.1 The qualifier shall be in the form `<domain_name>::`.  
4.1.2 The MASL exporter shall not add a domain qualifier to a type reference
that is already qualified with a domain name.  

### 5. Work Required

5.1 Create a new function in `maslout::lib::xtuml2masl::maslout` called
`type2typeref`. This function will be responsible for producing the `typeref`
serial MASL command.  
5.1.1 Add parameters `s_dt` and `containing_c_c`. `s_dt` is a handle to the type
which represents the type reference. `containing_c_c` is the domain or project
component in which the reference is made.  
5.2 Find and replace all invocations of `out::populate` for the `typeref`
command with invocations to `type2typeref`.  
5.2.1 Carry all existing special logic in these locations into `type2typeref`.  
5.2.2 Add code where necessary to select the containing component instance and
pass the handle to `type2typeref`.  

5.3 Add logic in `type2typeref` to determine the need for a domain qualifier.  
5.3.1 If `void`, skip the emission.  No typeref means void in MASL.  
5.3.2 If the type name contains the string "::", then it is already qualified,
go on a emit the type as is.  
5.3.3 If the type is found inside a component, it is local and does not need
qualification.  Determin this by navigating upwards through the package
hierarchy looking for the inside wall of the component (R8003).  
5.3.4 If the type exists under the same package as the component, it is in
the same domain and does not need to be qualified.  Search upward comparing
to the parent package of the component.  
5.3.5 Select the nearest sibling component to the type, first by selecting
direct sibling packageable elements in the same package, and traversing
iteratively up the package tree selecting sibling packageable elements along the
way.  
5.3.5.1 If the top level system is reached without finding any sibling
components, break out of the search and do not add a qualifier. Log an error to
the user.  
5.3.5.2 If two sibling components are found at the same level, break out of the
search and do not add a qualifier. Log an error to the user.  
5.3.5.3 Once the domain component instance is found, prepend the type name with
the name of the component and "::".  

5.4 Copy `type2typeref` into the OOA of OOA `x2m_functions`. These functions are
used to generate signatures for MASL persistence and headings in the Xtext MASL
editor.  
5.4.1 Adapt the existing code to use the new `type2typeref` invocation. Follow
the same patterns used in `maslout`.  

### 6. Implementation Comments

6.1 A simpler alternative was considered that assumes that single domains are
defined in Eclipse projects by themselves and that project projects also are
defined in separate Eclipse projects.  In such a case the following was the
thinking.  
6.1.1 The logic in `type2typeref` must assume that there is only one domain
defined in a single xtUML project. Since public elements like types must be
defined _outside_ the component itself, there is not another clear way in xtUML
to mark them as _belonging_ to a particular domain other than defining them in
the same project as the component. If for example, two domains were in the same
project and one referred to the other's types, the check in 5.3.2 would show
that the type is defined in the same system as the referring component so no
qualifier would be necessary (even though it would produce invalid MASL).  
6.1.2 However, the approach above that depends on packaging was chosen and
implemented.

### 7. Unit Test

7.1 MASL round trip shall pass.  

7.2 Manual acceptance test

This test assumes that the user is operating in a new workspace with MASL set as
the default dialect.

7.2.1 Download `10183_test_projects.zip` from the headline issue [[2.1]](#2.1).  
7.2.2 Import the four included models from the zip archive into a new workspace.  
7.2.3 Open and clear the error log view.  

7.2.4 Right click 10183_domain1::Domain1::Domain1 > Export MASL Domain.  
7.2.5 Verify that no "warning" messages appear in the `export.log`.  
7.2.6 Navigate to `masl/Domain1/Domain1.mod` in the `10183_domain1` project
root.  
7.2.7 Verify that the signature `public service TermServ ( param1: in
Domain1Type );` is in the file.  
7.2.8 Navigate to and open
10183_domain1::Domain1::Domain1::Term0::Term0::TermServ in model explorer.  
7.2.9 Verify that the signature is `public service Domain1::Term0~>TermServ (
param1: in Domain1Type )`.  
7.2.10 Verify that no new errors appear in the error log view.  

7.2.11 Right click 10183_domain2::Domain2::Domain2 > Export MASL Domain.  
7.2.12 Verify that no "warning" messages appear in the `export.log`.  
7.2.13 Navigate to `masl/Domain2/Domain2.mod` in the `10183_domain2` project
root.  
7.2.14 Verify that the signature `public service TermServ ( param1: in
Domain2Type );` is in the file.  
7.2.15 Navigate to and open
10183_domain2::Domain2::Domain2::Term1::Term1::TermServ in model explorer.  
7.2.16 Verify that the signature is `public service Domain2::Term1~>TermServ (
param1: in Domain2Type )`.  
7.2.17 Verify that no new errors appear in the error log view.  

7.2.18 Right click 10183_domain3::Domain3::Domain3 > Export MASL Domain.  
7.2.19 Verify that only one "warning" message appears in the `export.log`
stating:  "75 ___ warning ___ No domain component found for type: Domain3Type."   
7.2.20 Navigate to `masl/Domain3/Domain3.mod` in the `10183_domain3` project
root.  
7.2.21 Verify that the signature `public service TermServ ( param1: in
Domain3Type );` is in the file.  
7.2.22 Navigate to and open
10183_domain3::Domain3::Domain3::Term2::Term2::TermServ in model explorer.  
7.2.23 Verify that the signature is `public service Domain3::Term2~>TermServ (
param1: in Domain3Type )`.  
7.2.24 Verify that no new errors appear in the error log view.  

7.2.25 Right click 10183_project::Project > Export MASL Project.  
7.2.26 Verify the following "warning" messages appear in the `export.log`:  
```
75 ___ warning ___ No domain component found for type: Domain3Type
76 ___ warning ___ Multiple domain components found for type: Domain2Type
```
7.2.27 Navigate to `masl/Project/Project.prj` in the `10183_project` project
root.  
7.2.28 Verify that the signature `public service TermServ ( param1: in
Domain1::Domain1Type );` is in the file within the "Domain1" domain.  
7.2.29 Verify that the signature `public service TermServ ( param1: in
Domain2Type );` is in the file within the "Domain2" domain.  
7.2.30 Verify that the signature `public service TermServ ( param1: in
Domain3Type );` is in the file within the "Domain3" domain.  
7.2.31 Navigate to and open
10183_project::Project::Project::Domain1__Term0::Term0::TermServ in model explorer.  
7.2.32 Verify that the signature is `public service Domain1::Term0~>TermServ (
param1: in Domain1::Domain1Type )`.  
7.2.33 Verify that no new errors appear in the error log view.  
7.2.34 Navigate to and open
10183_project::Project::Project::Domain2__Term1::Term1::TermServ in model explorer.  
7.2.35 Verify that the signature is `public service Domain2::Term1~>TermServ (
param1: in Domain2Type )`.  
7.2.36 Verify some new errors appear in the error log view that say `Multiple domain
components found for type: Domain2Type`.  
7.2.37 Navigate to and open
10183_project::Project::Project::Domain3__Term2::Term2::TermServ in model explorer.  
7.2.38 Verify that the signature is `public service Domain3::Term2~>TermServ (
param1: in Domain3Type )`.  
7.2.39 Verify some new errors appear in the error log view that say `No domain
component found for type: Domain3Type`.  

### 8. User Documentation

None.

### 9. Code Changes

Fork/Repository: leviathan747/mc  
Branch: 10183_udt_interface  

<pre>

 doc/notes/10183_udt_interface_int.md                              | 189 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml | 234 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------------------------
 2 files changed, 357 insertions(+), 66 deletions(-)

</pre>



Fork/Repository: leviathan747/bridgepoint  
Branch: 10183_udt_interface  

<pre>

  src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Functions/x2m_functions/x2m_functions.xtuml | 195 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------------------
 1 file changed, 163 insertions(+), 32 deletions(-)

</pre>

### End

