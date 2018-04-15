---

This work is licensed under the Creative Commons CC0 License

---

# update mc3020 to pyrsl 2  
### xtUML Project Implementation Note

### 1. Abstract

Migrate MC-3020 from `pyrsl` version 1 to `pyrsl` version 2.  Take care
to test and get identical code generation.

### 2. Document References

<a id="2.1"></a>2.1 [10204](https://support.onefact.net/issues/10204) update mc3020 to pyrsl 2  

### 3. Background

`pyrsl` is the interpreter that process MC-3020 archetype files and
generates C code.  `pyrsl` is used for other model compilers as well.
MC-3020 ships with BridgePoint.  MC-3020 has been using the 1.0 and
earlier versions of `pyrsl`.  Version 2 of `pyrsl` is not backwards
compatible with version 1, because it corrects a flaw in reflexive
role phrases in `select` statements.  Version 2 of `pyrsl` has improved
support for 'relate' and 'unrelate' statements as well as other features
desirable for use in forward maintenance.

The primary change to archetypes using `pyrsl` version 2 is that reflexive
role phrases in 'select ... related' statements are corrected to be
consistent with OAL.  The original RSL had reversed the role phrases and
consistently maintained the inconsistency over many years.  Today this
gets aligned!

### 4. Requirements

4.1 Update MC-3020 to work with `pyrsl` version 2.  
4.2 Remove checks for specific versions of `pyrsl` in the archetypes.  
4.3 Testing must produce identical output.  

### 5. Work Required

5.1 Reverse reflexive role phrases.  
Reflexive selections get swapped.  Scripts exist that have been doing this
as part of RSL-to-OAL conversion.  The same scripts were used to reverse
the role phrases in the source archetypes.

<pre>
cp $1 /tmp/mc/$1
~/git/mc/mcmc/arlan/swapreflex.sh < /tmp/mc/$1 > $1
</pre>

5.2 Stop checking for old versions of `pyrsl`.  
`if` statements in the archetypes checked for older versions of `pyrsl`
which did not fully support 'relate' and 'unrelate'.  We can (and should)
now stop doing this.  These conditional branches are removed.

5.3 testing  
Testing was done that simply `diff`s generated code.  A set of models
which give good coverage are used to compare the output of `pyrsl` version
1 and `pyrsl` version 2.  Success requires identical output.

### 6. Implementation Comments

6.1 bug in `pyrsl` version 1  
A bug was discovered in `pyrsl` version 1 that is masked by `mcmc`.
The bug is fixed in `pyrsl` version 2.  The bug involves 'relate' and
'unrelate' when multiple attributes are contained in the identifier /
referential.  Specifically, `R846` from `V_EPR` to `SM_EVTDI` does not
get managed correctly.

6.2 code changes  
The code changes are restricted to reversal of the role phrases and
addition of the new binaries with one exception.  In a previous delivery,
4 lines were added to `sys.arc` to avoid a rebuild of `mcmc`.  `mcmc`
has been rebuilt now, so the 4 lines can be deleted.  These lines are
now redundant.

### 7. Unit Test

7.1 GPS Watch  
Translate GPS Watch with both versions of `pyrsl` and get the same results.  
7.1.1 Turn off `mcmc` in your installation by moving `mcmc` in `tools/mc/bin`
to `_mcmc`.  
7.1.2 Compile GPS Watch with MC-3020.  
7.1.3 Copy the generated `src` directory somewhere safe.  
7.1.4 Install version 2 of `pyrsl` into your installation by copying the
correct `gen_erate.pyz` into your `tools/mc/bin` directory.  
7.1.5 Link your installation `tools/mc/arc` folder to the archetype folder
for this work.  E.g. `ln -s ~/git/mc/arc arc` in your `tools/mc` folder.  
7.1.6 Compile GPS Watch with MC-3020.  
7.1.7 Copy the generated `src` directory somewhere safe.  
7.1.8 Compare the src from steps 7.1.3 and 7.1.7 to ensure they equivalence.  

7.2 More Models  
Some of the steps above can be automated for a larger set of models.
A decent cross-section of test models are used to test this issue.  This
test relies on the following script:

<pre>
models="assoc_unformal calculator pei polycalc subsuperchain"
outputdir="/tmp/2dir"
if [ ! -d $outputdir ]; then
  mkdir $outputdir
fi
for m in $models; do
  cd $m
  rm -f src/*.h src/*.c
  cd gen
  rm -rf code_generation/_ch; rm -rf code_generation/a.xtuml; rm -rf code_generation/_system.sql; rm -rf code_generation/arc; ~/xtuml/BridgePoint/tools/mc/bin/xtumlmc_build -home ~/xtuml/BridgePoint/tools/ -l3s -e -d code_generation -O ../../src/
  cd ..
  cp -pr src ${outputdir}/${m}_src
  cd ..
done
</pre>

7.2.1 Import models `assoc_unformal`, `calculator`, `pei`, `polycalc`,
`subsuperchain` from `xtuml/models/VandMC_testing/mctest` into a workspace.  
7.2.2 Upgrade models as needed.  
7.2.3 Build the models, so that a `code_generation` folder with translation
artifacts is created for each model.  
7.2.4 Using the script above, translate the models using both versions of
`pyrsl` using the technique in 7.2 to switch between.  
7.2.5 Compare the generated C code to ensure it is identical.

### 8. User Documentation

no changes required

### 9. Code Changes

<pre>
Fork/Repository: < enter your fork and repo name name >
Branch: < enter your branch name here >

</pre>

### End

