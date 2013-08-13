input files:
  o_objNameKL.csv
  s_dtid.csv
  s_sync_s_sparm_in.csv
output files:
  /tmp/ee.xtuml
  /tmp/dt.xtuml
  s_sync_s_sparm_out.csv
  stdout is function package material

Get the class names correlated with their key letters.
  Create o_objNameKL.csv by running the following archtype (o_obj_KL.arc).
    .select many o_objs from instances of O_OBJ
    .for each o_obj in o_objs
    ${o_obj.Name},${o_obj.Key_Lett},
    .end for
    .emit to file "../../src/o_objNameKL.csv"

Get the S_DTs correlated with their unique IDs.
  Create s_dtid.csv by grep'ing the model and adding a few lines at the front.
    awk '/INSERT INTO S_DT/,/);/' < mcmm_090630.xtuml | grep -v INSERT | grep -v "''" | grep -v '^   "' | awk "/VALUES/,/',/" > o.txt
    grep VALUES o.txt > o1.txt
    grep "'" o.txt > o2.txt
    paste o1.txt o2.txt > o3.txt
    Vi them to get format:  "4433612c-ca1c-4a91-b412-588535c01351",void,.

Get function names and parameters into a nicely indexed csv file.
  Scan the archetypes for the function names with associated parameters.
  Output them to a file s_sync_s_sparm_in all on one line.
  egrep -f fg types.arc  | awk '{if ($1 ~ "function") printf("\n%s,", $2); else printf("%s,", $3);}'

^.function 
^ *.param

Create an xtuml file to hold EEs for declaration of fragment structured data types for returning data from functions.

Create an xtuml file to hold S_DTs (and their packaging).
Be prepared to catch the standard output as the functions and their packaging into a function package xtuml file.




1.  Create a look-up table containing all of the data types including IRDTs.
2.  Create a look-up table containing all of the functions with parameters.

Create SDTs for return data types for all functions.

Create functions with linked return data types and linked parameters linked
to their data types.









