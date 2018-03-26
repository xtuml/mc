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


### 3. Background

![Model of MASL Structure](masl.png)

The `x2m` utility converts an xtUML model to MASL.  The conversion employs
a model-to-model (M2M) transformation process that queries instances from
the xtUML meta-model and populates the model of MASL.

`x2m` is extended with this work to measure and report model coverage.
A ratio of elements touched in the populated model of MASL can be reported
any time `x2m` is run.

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
5.1.1 Identify key semantic classes in the model of structural MASL.
For each of these classes, track and report the presence of instances
of the class in model data being processed.  
5.1.2 Identify key semantic associations in the model of structural MASL.
For each of these associations, track and report the presence of
instantiated links of the association in models being processed.  

5.2 Report coverage including percetage of meta-model touched.  

5.3 Integrate reported coverage into MASL Round Trip statistics.  

### 6. Implementation Comments

### 7. Unit Test

7.1 Minimal test.  
7.1.1 Starting from scratch, build a model with a single package with a
single component.  
7.1.2 Export MASL Domain  
7.1.3 See expected minimal coverage of TBD reported in the export.log.  

7.2 PEI  
7.2.1 Import the `pei_masl` branch of the PEI model [2.4].  
7.2.2 Export MASL Domain  
7.2.3 See coverage of TBD reported in the export.log.  

7.3 MASL Round Trip  
7.3.1 Run MASL Round Trip on the build server and see it pass.  
7.3.2 See coverage reported.  

### 8. User Documentation

8.1 Update documentation on Export MASL Domain and on MASL Round Trip.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/bridgepoint
Branch:  10052_coverage
</pre>

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10052_coverage
</pre>

<pre>
Fork/Repository:  cortlandstarrett/models
Branch:  10052_coverage
</pre>

### End

