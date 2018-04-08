---

This work is licensed under the Creative Commons CC0 License

---

# Terminator service with no implementation file creates an implementation file on export.
### xtUML Project Implementation Note


1. Abstract
-----------
This note describes the work performed to allow the MASL to xtUML conversion process
to handle terminator services with no implementation.

2. Document References
----------------------
[1] [BridgePoint DEI #9204](https://support.onefact.net/issues/9204) Headline DEI    
[2] [BridgePoint DEI #9202](https://support.onefact.net/issues/9202) Headline SR  
[3] [BridgePoint DEI #8962](https://support.onefact.net/issues/8962) Incorrect import of wrapper domains   

3. Background
-------------
Previous work [3] allowed the MASL to xtUML conversion process to support "wrapper" 
domains that were front-ends to implementations done in target languages.  This was
supported by adding the "C" dialect enum and using this enum in the conversion process.  
  
Terminators with no definition require similar handling during the conversion process.   

4. Requirements
---------------
4.1  If a domain declares a terminator service, but does not provide and implementation 
  ```.tr`` file then set the service dialect to "C" and do not generate an implementation 
  file for the exported domain.   

5. Work Required
----------------
5.1. In maslin, when required signals and operations are created during interface formalization, 
  set the dialect default to "C".  If a non-empty message body code block is to be added
  to the port message, change the dialect of the message to "MASL".  
5.2  Issue 8962 has a test model under the mc repository's maslin project ```test_data/``` folder. Expand
  this test to cover the empty terminator service scenario.  

6. Implementation Comments
--------------------------
6.1  The updated test model (now in a folder named c_services) as well as the 8938_test and
  8957_test folders were moved to the models repository and added to the masl regression test
  suite.  
   
7. Unit Test
------------
7.1  Run the MASL regression_test suite.
  - Verify no regressions
  - Verify newly added tests 8938_test, 8957_test, and c_services pass  

8. Code Changes
---------------
Repository: keithbrown/mc  
Branch name: 9204_c_term_svc

<pre>
 bin/m2x                                                          | Bin 683472 -> 671184 bytes
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml |  12 +++++++++++-
 model/maslin/test_data/8938_test/test.mod                        |  42 ------------------------------------------
 model/maslin/test_data/8938_test/test.smasl                      |  80 --------------------------------------------------------------------------------
 model/maslin/test_data/8957_test/test.mod                        |  11 -----------
 model/maslin/test_data/8957_test/test.smasl                      |  21 ---------------------
 model/maslin/test_data/8962_test/actualmaslroutine.svc           |   5 -----
 model/maslin/test_data/8962_test/mydom.mod                       |  12 ------------
 model/maslin/test_data/8962_test/mydom.smasl                     |  28 ----------------------------
</pre>

Repository: keithbrown/models  
Branch name: 9204_c_term_svc

<pre>
 masl/test/8938_test/X.int                   |  3 +++
 masl/test/8938_test/X.mod                   | 54 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 masl/test/8957_test/X.int                   |  3 +++
 masl/test/8957_test/X.mod                   | 11 +++++++++++
 masl/test/c_services/T_actualtermservice.tr |  5 +++++
 masl/test/c_services/actualmaslroutine.svc  |  5 +++++
 masl/test/c_services/mydom.int              | 13 +++++++++++++
 masl/test/c_services/mydom.mod              | 17 +++++++++++++++++
 masl/test/regression_test                   |  3 +++
</pre>

End
---

