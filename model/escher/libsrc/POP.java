//====================================================================
//
//File:      $RCSfile: POP.java,v $
//Version:   $Revision: 1.1.10.1 $
//Modified:  $Date: 2013/01/02 18:02:13 $
//
//====================================================================
package lib;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

import org.xtuml.bp.core.Association_c;
import org.xtuml.bp.core.AttributeValue_c;
import org.xtuml.bp.core.Attribute_c;
import org.xtuml.bp.core.BaseAttribute_c;
import org.xtuml.bp.core.ClassAsAssociatedOneSide_c;
import org.xtuml.bp.core.ClassAsAssociatedOtherSide_c;
import org.xtuml.bp.core.ClassAsLink_c;
import org.xtuml.bp.core.ClassAsSimpleFormalizer_c;
import org.xtuml.bp.core.ClassAsSimpleParticipant_c;
import org.xtuml.bp.core.ClassAsSubtype_c;
import org.xtuml.bp.core.ClassAsSupertype_c;
import org.xtuml.bp.core.ClassInAssociation_c;
import org.xtuml.bp.core.ClassInEngine_c;
import org.xtuml.bp.core.ComponentInstance_c;
import org.xtuml.bp.core.ComponentPackage_c;
import org.xtuml.bp.core.CoreDataType_c;
import org.xtuml.bp.core.CorePlugin;
import org.xtuml.bp.core.DataType_c;
import org.xtuml.bp.core.DerivedAssociation_c;
import org.xtuml.bp.core.DerivedBaseAttribute_c;
import org.xtuml.bp.core.Domain_c;
import org.xtuml.bp.core.Instance_c;
import org.xtuml.bp.core.LinkParticipation_c;
import org.xtuml.bp.core.Link_c;
import org.xtuml.bp.core.LinkedAssociation_c;
import org.xtuml.bp.core.ModelClass_c;
import org.xtuml.bp.core.Ooaofooa;
import org.xtuml.bp.core.Package_c;
import org.xtuml.bp.core.ReferredToClassInAssoc_c;
import org.xtuml.bp.core.ReferringClassInAssoc_c;
import org.xtuml.bp.core.SimpleAssociation_c;
import org.xtuml.bp.core.Subsystem_c;
import org.xtuml.bp.core.SubtypeSupertypeAssociation_c;
import org.xtuml.bp.core.SystemDatatypePackage_c;
import org.xtuml.bp.core.SystemModel_c;
import org.xtuml.bp.core.common.ClassQueryInterface_c;
import org.xtuml.bp.core.common.ModelRoot;
import org.xtuml.bp.core.common.NonRootModelElement;
import org.xtuml.bp.core.common.Transaction;
import org.xtuml.bp.core.common.TransactionManager;

public class POP {
    private static Ooaofooa mmRoot;
    private static ComponentInstance_c engine;
    
    public static void populate(final String project) {
        TransactionManager manager = null;
        Transaction transaction = null;
        try {
            HashMap<NonRootModelElement, Instance_c> instMap = new HashMap<NonRootModelElement, Instance_c>();
            HashMap<NonRootModelElement, Instance_c> classMap;
            
            /*
             * Find the model root belonging to the model being translated.
             */
            SystemModel_c sysMdl = SystemModel_c.SystemModelInstance(Ooaofooa.getDefaultInstance(), new ClassQueryInterface_c() {
                public boolean evaluate(Object systemModel) {
                    return ((SystemModel_c)systemModel).getName().equals(project);
                }
            });
            
            // collect all model roots for this system model
            Domain_c[] domains = Domain_c.getManyS_DOMsOnR28(sysMdl);
            ComponentPackage_c[] componentPackages = ComponentPackage_c.getManyCP_CPsOnR4602(sysMdl);
            SystemDatatypePackage_c[] systemDatatypePackages = SystemDatatypePackage_c.getManySLD_SDPsOnR4400(sysMdl);
            Package_c[] packages = Package_c.getManyEP_PKGsOnR1401(sysMdl);
            ArrayList<Ooaofooa> modelRoots = new ArrayList<Ooaofooa>();
            for (Package_c pkg : packages ) {
                debugLog("Found package: " + pkg.getName() + " -- " + ((Ooaofooa) pkg.getModelRoot()).getResourcePath().toOSString());
                modelRoots.add((Ooaofooa) pkg.getModelRoot());
            }
            for (Domain_c domain : domains) {
                debugLog("Found domain: " + domain.getName() + " -- " + ((Ooaofooa) domain.getModelRoot()).getResourcePath().toOSString());
                modelRoots.add((Ooaofooa) domain.getModelRoot());
            } 
            for (ComponentPackage_c componentPackage : componentPackages) {
                debugLog("Found component package: " + componentPackage.getName() + " -- " + ((Ooaofooa) componentPackage.getModelRoot()).getResourcePath().toOSString());
                modelRoots.add((Ooaofooa) componentPackage.getModelRoot());
            }
            for (SystemDatatypePackage_c systemDatatypePackage : systemDatatypePackages) {
                debugLog("Found SLDT package: " + systemDatatypePackage.getName() + " -- " + ((Ooaofooa) systemDatatypePackage.getModelRoot()).getResourcePath().toOSString());
                modelRoots.add((Ooaofooa) systemDatatypePackage.getModelRoot());
            }
            
            debugLog("1");
            /*
             * Find the model root of the model compiler (holding the meta model).
             * This assumes there is only one model named ooaofooa in any ExecutionEngine
             */
            SystemModel_c sysMM = SystemModel_c.SystemModelInstance(Ooaofooa.getDefaultInstance(), new ClassQueryInterface_c() {
                public boolean evaluate(Object systemModel) {
                    if (systemModel instanceof SystemModel_c) {
                        SystemModel_c sysModel = (SystemModel_c) systemModel;
                        Domain_c dom = Domain_c.getOneS_DOMOnR28(sysModel, new ClassQueryInterface_c() {
                            public boolean evaluate(Object systemModel) {
                                return ((Domain_c)systemModel).getName().equals("ooaofooa");
                            }
                        });
                        return ComponentInstance_c.getOneI_EXEOnR2948(dom) != null;
                    }
                    return false;
                }
            });
            
            Domain_c metaModel = Domain_c.getOneS_DOMOnR28(sysMM, new ClassQueryInterface_c() {
                public boolean evaluate(Object systemModel) {
                    return ((Domain_c)systemModel).getName().equals("ooaofooa");
                }
            });
            
            engine = ComponentInstance_c.getOneI_EXEOnR2948(metaModel);
            mmRoot = (Ooaofooa) engine.getModelRoot();
            
            debugLog("Got System " + sysMM.getName());
            debugLog("Got Domain " + metaModel.getName());
            debugLog("Got engine " + engine.getName());
            debugLog("Got mm root " + mmRoot.toString());
            debugLog("2");
            /*
             * Group all instance population activities into one transaction,
             * this will force Session Explorer one the transaction ends 
             */
            manager = sysMM.getTransactionManager();
            transaction = manager.startTransaction("Populate metamodel in Verifier", mmRoot);
            
            // hard code the system model instantiation as it is not related to the modelRoot
            ModelClass_c sysMdlClass = ModelClass_c.getOneO_OBJOnR2(Subsystem_c.getManyS_SSsOnR1(metaModel), new ClassQueryInterface_c() {
                public boolean evaluate(Object systemModel) {
                    return ((ModelClass_c)systemModel).getName().equals("System Model");
                }
            });
            Instance_c inst = addInstance(sysMdlClass);
            Attribute_c sysMdlNameAttr = Attribute_c.getOneO_ATTROnR102(sysMdlClass, new ClassQueryInterface_c() {
                public boolean evaluate(Object systemModel) {
                    return ((Attribute_c)systemModel).getName().equals("Name");
                }
            });
            getAttribute(sysMdlNameAttr, inst).Setstring(project);;
    
            ModelClass_c[] metaClasses = ModelClass_c.getManyO_OBJsOnR2(Subsystem_c.getManyS_SSsOnR1(metaModel));
            HashMap<ModelClass_c, HashMap<NonRootModelElement, Instance_c>> instMapByClass
                = new HashMap<ModelClass_c, HashMap<NonRootModelElement, Instance_c>>(metaClasses.length);

            // Store the system instance in the maps
            debugLog("Creating map data for system " + sysMdl.getName());
            classMap = new HashMap<NonRootModelElement, Instance_c>();
            classMap.put(sysMdl, inst);
            instMapByClass.put(sysMdlClass, classMap);
            instMap.put(sysMdl, inst);

            debugLog("3");
            /*
             * Create all instances in the meta model execution engine based on 
             * the input model.
             */
            for (ModelClass_c metaClass : metaClasses) {

                debugLog("3 - Processing meta class " + metaClass.getName());
                if ( metaClass.getName().equals("System Model")) { continue; }
                classMap = new HashMap<NonRootModelElement, Instance_c>();
                instMapByClass.put(metaClass, classMap);
                for (Ooaofooa modelRoot : modelRoots) {
                    debugLog("  - looping on model root: " + modelRoot.getResourcePath().toOSString());
                    // derive the java class name from the meta class, make sure it exists and use it 
                    // to query the in-memory meta model
    
                    String metaClassName = deriveMcJavaName(metaClass.getName());
                    String metaClassJavaName = "org.xtuml.bp.core." + metaClassName + "_c";
                    debugLog("  - cn: " + metaClassJavaName);
                    String metaClassFindInstancesMethodName = metaClassName + "Instances";
                    debugLog("  - fin: " + metaClassFindInstancesMethodName);
    
                    try {
                        Class<?> javaClass = Class.forName(metaClassJavaName);
                        Method findInstancesMethod = javaClass.getMethod(metaClassFindInstancesMethodName, ModelRoot.class);
                        debugLog("  - findInstancesMethod is " + findInstancesMethod.getName());
                        
                        // query the in-memory meta class for all its instances associated to the input model
                        NonRootModelElement[] metaClassInstances = (NonRootModelElement[])findInstancesMethod.invoke(null, modelRoot);
                        debugLog("  - count of instances found: " + metaClassInstances.length);
                        
                        // find all attribute names and query the in-memory meta model to 
                        // find the values for these attributes for the given instance
                        Attribute_c[] attrs = Attribute_c.getManyO_ATTRsOnR102(metaClass);
                        CoreDataType_c[] cdts = new CoreDataType_c[attrs.length];
                        for (int i = 0; i < attrs.length; i++) {
                            cdts[i] = CoreDataType_c.getOneS_CDTOnR17(DataType_c.getOneS_DTOnR114(attrs[i]));
                        }
    
                        for (NonRootModelElement metaClassInstance : metaClassInstances) {
                            debugLog("  - looping on instances: " + metaClassInstance.getName());
                            inst = addInstance(metaClass);
                            classMap.put(metaClassInstance, inst);
                            instMap.put(metaClassInstance, inst);
                            for (int i = 0; i < attrs.length; i++) {
                                DerivedBaseAttribute_c derived = DerivedBaseAttribute_c.getOneO_DBATTROnR107(BaseAttribute_c.getOneO_BATTROnR106(attrs[i]));
                                if (derived != null) {
                                    // don't care about derived attributes
                                    continue;
                                }
                                if (cdts[i] != null) {
                                    switch (cdts[i].getCore_typ()) {
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                        Method m = javaClass.getMethod("get" + deriveMcJavaName(attrs[i].getName()));
                                        Object val = m.invoke(metaClassInstance);
                                        getAttribute(attrs[i], inst).Setstring(val + "");
                                        break;
                                    default:
                                        break;
                                    }
                                }
                            }
                        }
                    } catch (ClassNotFoundException e) {
                        debugLog("   *** ClassNotFoundException ***");
                        // as document is also part of ooaofooa, this is actually a normal case
                    } catch (NoSuchMethodException e) {
                        debugLog("   *** NoSuchMethodException ***");
                        CorePlugin.err.println(e.toString());
                    } catch (InvocationTargetException e) {
                        debugLog("   *** InvocationTargetException ***");
                        // TODO: put back inCorePlugin.err.println(e.toString() + " " + e.getTargetException());
                    } catch (IllegalAccessException e) {
                        debugLog("   *** IllegalAccessException ***");
                        CorePlugin.err.println(e.toString());
                    }
                }
            }
            debugLog("4");
            /*
             * Relate all instances that were created in the previous step
             */ 
            for (ModelClass_c metaClass : metaClasses) {
                debugLog("4 - Processing meta class " + metaClass.getName());
                classMap = instMapByClass.get(metaClass);
                
                // find all associations where this meta class is participating
                Association_c[] assos = Association_c.getManyR_RELsOnR201(metaClass); 
                for (Association_c asso : assos) {
                    debugLog("  " + asso.getNumb());
                    // figure out which type of association this is
                    SimpleAssociation_c simpleAssociation   = SimpleAssociation_c.getOneR_SIMPOnR206(asso);
                    LinkedAssociation_c linkedAssociation   = LinkedAssociation_c.getOneR_ASSOCOnR206(asso);
                    SubtypeSupertypeAssociation_c subtypeSupertypeAssociation 
                                                            = SubtypeSupertypeAssociation_c.getOneR_SUBSUPOnR206(asso);
                    DerivedAssociation_c derivedAssociation = DerivedAssociation_c.getOneR_COMPOnR206(asso);
    
                    if (simpleAssociation != null) {
                        
                        // for simple associations there are really two cases, formalized and unformalized
                        ClassAsSimpleParticipant_c[] classAsSimpleParticipant = ClassAsSimpleParticipant_c.getManyR_PARTsOnR207(simpleAssociation);
                        if (classAsSimpleParticipant.length == 1) { // formalized association
                            
                            debugLog("    is a simple formalized association");
                            ClassAsSimpleFormalizer_c  classAsSimpleFormalizer = ClassAsSimpleFormalizer_c.getOneR_FORMOnR208(simpleAssociation);
                            ReferringClassInAssoc_c referringClassInAssoc = ReferringClassInAssoc_c.getOneR_RGOOnR205(classAsSimpleFormalizer);
                            ReferredToClassInAssoc_c referredToClassInAssoc = ReferredToClassInAssoc_c.getOneR_RTOOnR204(classAsSimpleParticipant[0]);
                            ModelClass_c formalizer = ModelClass_c.getOneO_OBJOnR201(ClassInAssociation_c.getOneR_OIROnR203(referringClassInAssoc));
                            ModelClass_c participant = ModelClass_c.getOneO_OBJOnR201(ClassInAssociation_c.getOneR_OIROnR203(referredToClassInAssoc));                        

                            String formalizerClassName = deriveMcJavaName(formalizer.getName());
                            String formalizerClassJavaName = "org.xtuml.bp.core." + formalizerClassName + "_c";
                            
                            String participantClassName = deriveMcJavaName(participant.getName());
                            String participantClassJavaName = "org.xtuml.bp.core." + participantClassName + "_c";
                            try {
                                Class<?> formalizerClass = Class.forName(formalizerClassJavaName);
                                debugLog("    - formalizer: " + formalizerClassName);
                                Class<?> participantClass = Class.forName(participantClassJavaName);
                                debugLog("    - participant: " + participantClassName);
                            
                                for (NonRootModelElement elem : classMap.keySet()) {
                                    debugLog("    - looping on element " + elem.getName());
                                    try {
                                        if (participantClass.isInstance(elem)) {
                                            debugLog("    - participant class is an instance of elem");
                                            // it might be a one to many, so do a 'select many' query
                                            String txtPhrase = formalizer == participant ? classAsSimpleFormalizer.getTxt_phrs() : "";
                                            String formalizerMethodName = "getMany" + formalizer.getKey_lett() + "sOn" + asso.getName() + deriveMcJavaName(txtPhrase);
                                            debugLog("    - method name = " + formalizerMethodName);
                                            Method findFormalizers = formalizerClass.getMethod(formalizerMethodName, participantClass);
                                            NonRootModelElement[] formalizers = (NonRootModelElement[])findFormalizers.invoke(null, elem);
                                            debugLog("    - found " + formalizers.length + " possible formalizer instances");
                                            for (NonRootModelElement form : formalizers) {
                                                debugLog("    - formalizing " + form.getName());
                                                Instance_c toInstance = instMap.get(form);
                                                
                                                // there may be an instance of the investigate meta class
                                                // that does not participate in this type of association
                                                if (toInstance != null) {
                                                    debugLog("    - relating: " + elem.getName() + " to " + form.getName() + " across " + asso.getName());
                                                    relate(classMap.get(elem), toInstance, null, asso);
                                                } else {
                                                    debugLog("    - could not relate, no toInstance found");
                                                }
                                            }
                                        }
                                        /*  SKB: Not needed.  If this is here then we hook up relationships twice, once for each side as we're processing the instance data.
                                        else if (formalizerClass.isInstance(elem)) {
                                            debugLog("    - formalizer class is an instance of elem");
                                            // it might be a one to many, so do a 'select many' query
                                            String txtPhrase = formalizer == participant ? classAsSimpleFormalizer.getTxt_phrs() : "";
                                            String participantMethodName = "getMany" + participant.getKey_lett() + "sOn" + asso.getName() + deriveMcJavaName(txtPhrase);
                                            debugLog("    - method name = " + participantMethodName);
                                            Method findParticipants = participantClass.getMethod(participantMethodName, formalizerClass);
                                            NonRootModelElement[] participants = (NonRootModelElement[])findParticipants.invoke(null, elem);
                                            debugLog("    - found " + participants.length + " possible participant instances");
                                            for (NonRootModelElement part : participants) {
                                                debugLog("    - formalizing " + part.getName());
                                                Instance_c toInstance = instMap.get(part);
                                                
                                                // there may be an instance of the investigate meta class
                                                // that does not participate in this type of association
                                                if (toInstance != null) {
                                                    debugLog("    - relating: " + elem.getName() + " to " + part.getName() + " across " + asso.getName());
                                                    relate(classMap.get(elem), toInstance, null, asso);
                                                } else {
                                                    debugLog("    - could not relate, no toInstance found");
                                                }
                                            }                                            
                                        }*/
                                    } catch (NoSuchMethodException e) {
                                        debugLog("    *** NoSuchMethodException ***");
                                        CorePlugin.err.println(e.toString());
                                    } catch (InvocationTargetException e) {
                                        debugLog("    *** InvocationTargetException ***");
                                        CorePlugin.err.println(e.toString());
                                    } catch (IllegalAccessException e) {
                                        debugLog("    *** IllegalAccessException ***");
                                        CorePlugin.err.println(e.toString());
                                    } catch (IllegalArgumentException e) {
                                        debugLog("    *** IllegalArgumentException ***");
                                        CorePlugin.err.println(e.toString());
                                    }
                                }
                            } catch (ClassNotFoundException e) {
                                // as document is also part of ooaofooa, this is actually a normal case
                                debugLog("    *** ClassNotFoundException ***");
                            }
                        } else {  // unformalized association
                            debugLog("    is a simple unformalized association");
                            ReferredToClassInAssoc_c referredToClassInAssoc1 = ReferredToClassInAssoc_c.getOneR_RTOOnR204(classAsSimpleParticipant[0]);
                            ClassInAssociation_c classInAssociation1 = ClassInAssociation_c.getOneR_OIROnR203(referredToClassInAssoc1);
                            ModelClass_c participant1 = ModelClass_c.getOneO_OBJOnR201(classInAssociation1);
                            
                            ReferredToClassInAssoc_c referredToClassInAssoc2 = ReferredToClassInAssoc_c.getOneR_RTOOnR204(classAsSimpleParticipant[1]);
                            ClassInAssociation_c classInAssociation2 = ClassInAssociation_c.getOneR_OIROnR203(referredToClassInAssoc2);
                            ModelClass_c participant2 = ModelClass_c.getOneO_OBJOnR201(classInAssociation2);
                        
                            String part1ClassName = deriveMcJavaName(participant1.getName());
                            String part1ClassJavaName = "org.xtuml.bp.core." + part1ClassName + "_c";
                            
                            String participant2ClassName = deriveMcJavaName(participant2.getName());
                            String participant2ClassJavaName = "org.xtuml.bp.core." + participant2ClassName + "_c";
                            try {
                                Class<?> part1Class = Class.forName(part1ClassJavaName);
                                Class<?> participant2Class = Class.forName(participant2ClassJavaName);

                                for (NonRootModelElement elem : classMap.keySet()) {
            
                                    try {
                                        // TODO: this implementation will cause reflexive associations to be
                                        // instantiated twice, one for each direction (not a problem right now
                                        // as the meta model is not using this type of association
                                        if (part1Class.isInstance(elem)) {
                                            
                                            // it might be a one to many, so do a 'select many' query

                                            String txtPhrase = participant1 == participant2 ? classAsSimpleParticipant[1].getTxt_phrs() : "";
                                            Method findPerticipants = part1Class.getMethod("getMany" + participant1.getKey_lett() + "sOn" + asso.getName() + deriveMcJavaName(txtPhrase), participant2Class);
                                            NonRootModelElement[] participants = (NonRootModelElement[])findPerticipants.invoke(null, elem);
                                            for (NonRootModelElement part : participants) {
                                                Instance_c toInstance = instMap.get(part);
                                                
                                                // there may be an instance of the investigate meta class
                                                // that does not participate in this type of association
                                                if (toInstance != null) {
                                                    relate(classMap.get(elem), toInstance, null, asso);
                                                }
                                            }
                                        } 
                                    } catch (NoSuchMethodException e) {
                                        CorePlugin.err.println(e.toString());
                                    } catch (InvocationTargetException e) {
                                        CorePlugin.err.println(e.toString());
                                    } catch (IllegalAccessException e) {
                                        CorePlugin.err.println(e.toString());
                                    }
                                }
                            } catch (ClassNotFoundException e) {
                                // as document is also part of ooaofooa, this is actually a normal case
                            }
                        }
                    } else if (linkedAssociation != null) {
                        ClassAsAssociatedOneSide_c one   = ClassAsAssociatedOneSide_c.getOneR_AONEOnR209(linkedAssociation);
                        ClassAsAssociatedOtherSide_c oth = ClassAsAssociatedOtherSide_c.getOneR_AOTHOnR210(linkedAssociation);
                        ClassAsLink_c link               = ClassAsLink_c.getOneR_ASSROnR211(linkedAssociation);
                        
                        ModelClass_c referred1 = ModelClass_c.getOneO_OBJOnR201(ClassInAssociation_c.getOneR_OIROnR203(ReferredToClassInAssoc_c .getOneR_RTOOnR204(one)));
                        ModelClass_c referred2 = ModelClass_c.getOneO_OBJOnR201(ClassInAssociation_c.getOneR_OIROnR203(ReferredToClassInAssoc_c.getOneR_RTOOnR204(oth)));
                        ModelClass_c across    = ModelClass_c.getOneO_OBJOnR201(ClassInAssociation_c.getOneR_OIROnR203(ReferringClassInAssoc_c.getOneR_RGOOnR205(link)));
    
                        
                        debugLog("    is a linked association");
                        if (across == metaClass) {
                            // go head and establish the relationships
                            String ref1ClassName = deriveMcJavaName(referred1.getName());
                            String ref1ClassJavaName = "org.xtuml.bp.core." + ref1ClassName + "_c";
                            
                            String ref2ClassName = deriveMcJavaName(referred2.getName());
                            String ref2ClassJavaName = "org.xtuml.bp.core." + ref2ClassName + "_c";
                            
                            String acrossClassName = deriveMcJavaName(across.getName());
                            String acrossClassJavaName = "org.xtuml.bp.core." + acrossClassName + "_c";
                            
                            try {
                                Class<?> ref1Class = Class.forName(ref1ClassJavaName);
                                Class<?> ref2Class = Class.forName(ref2ClassJavaName);
                                Class<?> acrossClass = Class.forName(acrossClassJavaName);
                                
                                for (NonRootModelElement elem : classMap.keySet()) {
        
                                    try {
                                        if (acrossClass.isInstance(elem)) {
                                            Method findReferred2one = ref1Class.getMethod("getOne" + referred1.getKey_lett() + "On" + asso.getName(), acrossClass);
                                            Method findReferred2oth = ref2Class.getMethod("getOne" + referred2.getKey_lett() + "On" + asso.getName(), acrossClass);
                                            NonRootModelElement referred2one = (NonRootModelElement)findReferred2one.invoke(null, elem);
                                            NonRootModelElement referred2oth = (NonRootModelElement)findReferred2oth.invoke(null, elem);
                                            Instance_c instFrom = instMap.get(referred2one);
                                            Instance_c instTo = instMap.get(referred2oth);
                                            
                                            // there may be an instance of the investigate meta class
                                            // that does not participate in this type of association
                                            if (instFrom != null && instTo != null) {   
                                                relate(instFrom, instTo, classMap.get(elem), asso);
                                            }
                                        } 
                                    } catch (NoSuchMethodException e) {
                                        CorePlugin.err.println(e.toString());
                                    } catch (InvocationTargetException e) {
                                        CorePlugin.err.println(e.toString() + elem);
                                    } catch (IllegalAccessException e) {
                                        CorePlugin.err.println(e.toString());
                                    }
                                }
                            } catch (ClassNotFoundException e) {
                                // as document is also part of ooaofooa, this is actually a normal case
                            }
                        }               
                    } else if (subtypeSupertypeAssociation != null) {
                        debugLog("    is a subtype/supertype association");
                        ClassAsSupertype_c sup = ClassAsSupertype_c.getOneR_SUPEROnR212(subtypeSupertypeAssociation);
                        ClassAsSubtype_c[]  subs  = ClassAsSubtype_c.getManyR_SUBsOnR213(subtypeSupertypeAssociation);
                        for (ClassAsSubtype_c sub : subs) {
                            ModelClass_c superClass = ModelClass_c.getOneO_OBJOnR201(ClassInAssociation_c.getOneR_OIROnR203( ReferredToClassInAssoc_c.getOneR_RTOOnR204(sup)));
                            ModelClass_c subClass = ModelClass_c.getOneO_OBJOnR201(ClassInAssociation_c.getOneR_OIROnR203(ReferringClassInAssoc_c.getOneR_RGOOnR205(sub)));
        
                            
                                // go head and establish the relationships
                            String superClassName = deriveMcJavaName(superClass.getName());
                            String superClassJavaName = "org.xtuml.bp.core." + superClassName + "_c";
                            
                            String subClassName = deriveMcJavaName(subClass.getName());
                            String subClassJavaName = "org.xtuml.bp.core." + subClassName + "_c";
                            try {

                                Class<?> superJavaClass = Class.forName(superClassJavaName);
                                Class<?> subJavaClass = Class.forName(subClassJavaName);
                            
                                // for each inst of referring
                                for (NonRootModelElement elem : classMap.keySet()) {
        
                                    try {
                                        if (subJavaClass.isInstance(elem)) {
                                            Method findSuperClassInstance = superJavaClass.getMethod("getOne" + superClass.getKey_lett() + "On" + asso.getName(), subJavaClass);
                                            NonRootModelElement superClassInstance = (NonRootModelElement)findSuperClassInstance.invoke(null, elem);
                                            // no need to null check, there should be a super class
                                            // TODO: Packageable Element doesn't follow the rules yet, hence the null check
                                            if (superClassInstance != null) {
                                                relate(classMap.get(elem), instMap.get(superClassInstance), null, asso);
                                            }
                                        } 
                                    } catch (NoSuchMethodException e) {
                                        CorePlugin.err.println("No such method " + e.toString());
                                    } catch (InvocationTargetException e) {
                                        CorePlugin.err.println("Invocation target exception " + e.toString());
                                    } catch (IllegalAccessException e) {
                                        CorePlugin.err.println("Illegal access " + e.toString());
                                    }
                                }
                            } catch (ClassNotFoundException e) {
                                // as document is also part of ooaofooa, this is actually a normal case
                            }
                        }               
                    } else if (derivedAssociation != null) {
                        CorePlugin.err.println("DerivedAssociation_c, not implemented");
                    } 
                }
            }
        } catch (Exception e) {
            CorePlugin.err.println(e.toString());
            e.printStackTrace();
            StackTraceElement ts[] = e.getStackTrace();
            for (StackTraceElement t : ts)
                CorePlugin.err.println(t.toString());
        } finally {
            if (manager != null) {
                manager.endTransaction(transaction);
            }
        }
        debugLog("5");
    }
    private static String deriveMcJavaName(String name) {
        StringTokenizer tokenizer = new StringTokenizer(name, " ");
        String convertedName = "";
        while (tokenizer.hasMoreElements()) {
            String str = tokenizer.nextToken();
            convertedName += str.substring(0, 1).toUpperCase();
            if (str.length() > 1) {
                convertedName += str.substring(1).toLowerCase();
            }
        }
        return convertedName;
    }
    private static void relate(Instance_c from, Instance_c to, Instance_c using, final Association_c association) {
        
        LinkParticipation_c fromLinkParticipation = LinkParticipation_c.getOneI_LIPOnR2958(from, new ClassQueryInterface_c() {
            public boolean evaluate(Object obj) {
                if (obj instanceof LinkParticipation_c) {
                    LinkParticipation_c linkPart = (LinkParticipation_c) obj;
                    return linkPart.getLabel().equals(association.getName());
                }
                return false;
            }
        });
        if (fromLinkParticipation == null) {
            fromLinkParticipation = new LinkParticipation_c(mmRoot);
            from.relateAcrossR2958To(fromLinkParticipation, true);
        }
        
        LinkParticipation_c toLinkParticipation = LinkParticipation_c.getOneI_LIPOnR2958(to, new ClassQueryInterface_c() {
            public boolean evaluate(Object obj) {
                if (obj instanceof LinkParticipation_c) {
                    LinkParticipation_c linkPart = (LinkParticipation_c) obj;
                    return linkPart.getLabel().equals(association.getName());
                }
                return false;
            }
        });
        if (toLinkParticipation == null) {
            toLinkParticipation = new LinkParticipation_c(mmRoot);
            to.relateAcrossR2958To(toLinkParticipation, true);
        }
        
        Link_c link = new Link_c(mmRoot);
        
        if (association != null) {
            association.relateAcrossR2904To(link, true);
            association.relateAcrossR2959To(fromLinkParticipation, true);
            association.relateAcrossR2959To(toLinkParticipation, true);
            link.relateAcrossR2901To(fromLinkParticipation, true);
            link.relateAcrossR2902To(toLinkParticipation, true);
            
            if (using != null) {
                
                LinkParticipation_c associativeLinkParticipation = LinkParticipation_c.getOneI_LIPOnR2958(using, new ClassQueryInterface_c() {
                    public boolean evaluate(Object obj) {
                        if (obj instanceof LinkParticipation_c) {
                            LinkParticipation_c linkPart = (LinkParticipation_c) obj;
                            return linkPart.getLabel().equals(association.getName());
                        }
                        return false;
                    }
                });
                if (associativeLinkParticipation == null) {
                    associativeLinkParticipation = new LinkParticipation_c(mmRoot);
                    using.relateAcrossR2958To(associativeLinkParticipation, true);
                }
                
                association.relateAcrossR2959To(associativeLinkParticipation, true);
                link.relateAcrossR2903To(associativeLinkParticipation);
            }
            
        }
    }
    private static Instance_c addInstance(ModelClass_c mcClass) {
        // find the corresponding model class in the meta model
        ClassInEngine_c classInEngine = ClassInEngine_c.getOneCSME_CIEOnR2961(mcClass);

        if (classInEngine != null) {
            // create the instance and relate it to the Verifier session and its class
            Instance_c inst = new Instance_c(mmRoot);
            
            inst.relateAcrossR2957To(engine);
            inst.relateAcrossR2962To(classInEngine, true);
            inst.Initialize(false);
            return inst;
        }
        return null;
    }

    private static AttributeValue_c getAttribute(final Attribute_c attribute, Instance_c instance) {    
        // set name
        return AttributeValue_c.getOneI_AVLOnR2909(instance, new ClassQueryInterface_c() {
            public boolean evaluate(Object obj) {
                Attribute_c attr = Attribute_c.getOneO_ATTROnR2910((AttributeValue_c)obj);
                return attribute == attr;
            }
        });
    }
    private static void debugLog(String msg) {
        boolean debugOn = false;
        if ( debugOn == true ) {
            LOG.LogInfo(msg);
        }
    }
}
