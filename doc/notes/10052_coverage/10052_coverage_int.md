---

This work is licensed under the Creative Commons CC0 License

---

# Create [MASL model] coverage tool  
### xtUML Project Implementation Note

### 1. Abstract

This work begins to measure how much of the language is being
used by an input set of models.  Coverage is based upon the degree
to which meta-model elements are populated.  Namely, after an application
model has been loaded into the model of MASL structure (meta-model),
the classes and associations are queried and tallied.  A ratio of
model elements employed over the total number of possible elements
provides a repeatable measurement by which to evaluate coverage.

### 2. Document References

<a id="2.1"></a>2.1 [10052](https://support.onefact.net/issues/10052) Create coverage tool  
<a id="2.2"></a>2.2 [MASL](https://github.com/xtuml/mc/tree/master/model/masl) xtUML Model of MASL Structure  
<a id="2.3"></a>2.3 [Rapping SRS (internal access only)](https://docs.google.com/document/d/1Drp57-DkoHEkMmCsTmUrp5TLZvSgdv5cLRSNEmhnbPU/edit#) Requirements Specification Project Rapping Document ID: 9844  
<a id="2.4"></a>2.4 [PEI model](https://github.com/xtuml/models/tree/pei_masl/VandMC_testing/mctest/pei) class and association coverage model  
<a id="2.5"></a>2.5 [HOWTO_coverage.txt](https://github.com/xtuml/mc/tree/master/model/masl/gen/HOWTO_coverage.txt) HOWTO Update Coverage Tool  


### 3. Background

![Model of MASL Structure](masl.png) Model of MASL Structure  

The `xtuml2masl` utility converts an xtUML model to MASL.  The conversion
employs a model-to-model (M2M) transformation process that queries instances
from the xtUML meta-model and populates the model of MASL.  The query portion
is implementated as `x2m` which reads from the xtUML meta-model and serializes
into a string MASL form.  Further transformation is processed downstream in
`masl` as operations on the meta-model of structural MASL.

`xtuml2masl` is extended with this work to measure and report model coverage.
A ratio of elements touched in the populated model of MASL can be reported
any time `xtuml2masl` is run.  The extension is implemented in `masl`.

### 4. Requirements

4.1 Provide a consistent and repeatable measurement of MASL model coverage.  
In the Rapping project Software Requirements Specification [2.3] the
following requirement is found:  "The reference model(s) will maximize
regression test coverage for both BridgePoint and MASL model compilers."
This requirement clearly presupposes a coverage metric.

4.2 The coverage tool shall be integrated with the round-trip test.  
In [2.3], "Test coverage for 9847-6 and 9847-7 shall be measured using
enhancements to the existing round-trip test mechanism."

4.3 The coveragle tool shall report percentage of model coverage.  
In [2.3], "The updated round trip testing will report the percentage
of meta-model coverage."

### 5. Work Required

5.1 Measure coverage.  
5.1.1 Identify semantic classes in the model of structural MASL.
For each of these classes, track and report the presence of instances
of the class in model data being processed.  
5.1.2 Identify semantic associations in the model of structural MASL.
For each of these associations, track and report the presence of
instantiated links of the association in models being processed.  
5.1.3 Semantic classes and associations are found in the 'masl' package
in the model of structural masl.  This model is shown in the figure above.
All classes (whether imported classes or otherwise) and all associations
on this diagram are used in the coverage metric.  
5.1.4 An archetype (`masl/gen/coverage.ark`) is written to generate OAL
which queries the model of MASL structure.  This archetype traverses the
'masl' package finding classes and associations to query and tally.  The
OAL is emitted into a text file (`masl/gen/coverage.txt`).  The contents
of this file are copied and pasted into the class-based class operation
`maslpopulation::population::coverage`.  Linkage to this operation are
provided through a message on the `gen` interface.  
5.1.5 `HOWTO_coverage.txt`  
A README file is provided that enumerates the steps to updating the
coverage metric capability of the `masl` model.

5.2 Report coverage including percetage of meta-model touched.  
Each model processed by `xtuml2masl` will report its individual coverage
statistics.  When running multiple models in a MASL Round Trip regression
test, the individual model results must be "rolled up" into an aggregate
result composed of the 'OR'ing of all individual results.

5.3 Integrate reported coverage into MASL Round Trip statistics.  
As stated above, individual model coverage results must be aggregated.
The aggregation is performed at the end of a MASL Round Trip regression
and reported with the summary results.

### 6. Implementation Comments

6.1 `masl_population_class.c`  
The `masl_population_class.c` file had been maintained in the `/gen`
folder because of a weakness in the C model compiler.  A way has been
found to bypass this weakness and perform initialization that was not
done before.  This obviates the need to keep this file around and relieves
developers of hand-editing ("vimdiff'ing") this file repeatedly.
`masl_population_class.c` is hereby removed from the `/gen' folder.

### 7. Unit Test

7.1 Minimal test.  
7.1.1 Starting from scratch, build a model with a single package with a
single component.  
7.1.2 Export MASL Domain  
7.1.3 See expected minimal coverage of 1 / 61 = 1 % reported in `code_generation/masl_output.txt`.  

7.2 PEI  
7.2.1 Import the `pei_masl` branch of the PEI model [2.4].  
7.2.2 Export MASL Domain  
7.2.3 See coverage of 42 / 61 = 68 % reported in `code_generation/masl_output.txt`.  

7.3 MASL Round Trip  
7.3.1 Run MASL Round Trip on the build server and see it pass.  
7.3.2 See coverage reported.  

### 8. User Documentation

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10052_coverage
 doc/notes/10052_coverage/10052_coverage_int.md                    |  148 +++++++
 doc/notes/10052_coverage/masl.png                                 |  Bin 0 -> 203177 bytes
 doc/review-minutes/10052_coverage_int_rvm.md                      |   33 ++
 model/masl/gen/HOWTO_coverage.txt                                 |   10 +
 model/masl/gen/coverage.ark                                       |  215 +++++++++
 model/masl/gen/coverage.txt                                       |  584 ++++++++++++++++++++++++
 model/masl/gen/masl_population_class.c                            | 1315 ----------------------------------
 model/masl/gen/sys_user_co.c                                      |    1 +
 model/masl/models/masl/lib/gen/gen.xtuml                          |   12 +
 model/masl/models/masl/lib/masl/masl.xtuml                        |   20 +-
 model/masl/models/masl/maslpopulation/population/population.xtuml |  606 ++++++++++++++++++++++++-
 11 files changed, 1627 insertions(+), 1317 deletions(-)
</pre>

<pre>
Fork/Repository:  cortlandstarrett/models
Branch:  10052_coverage
 masl/test/collectstars.py      |  15 +++
 masl/test/pei/application.mark |  29 ++++++
 masl/test/pei/do_creates.svc   | 226 ++++++++++++++++++++++++++++++++++++++++++
 masl/test/pei/features.mark    |   7 ++
 masl/test/pei/pei.int          |   6 ++
 masl/test/pei/pei.mod          | 495 +++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------
 masl/test/pei/setup.svc        |  21 ++++
 masl/test/pei/socket_first.al  |   9 ++
 masl/test/pei/socket_second.al |   5 +
 masl/test/pei/socket_third.al  |   5 +
 masl/test/pei/start_test.svc   |   6 ++
 masl/test/pei/test.svc         | 472 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 masl/test/pei/test1.svc        |  10 ++
 masl/test/pei/test2.svc        |  39 ++++++++
 masl/test/pei/xit.svc          |   5 +
 15 files changed, 1153 insertions(+), 197 deletions(-)
</pre>

### End

