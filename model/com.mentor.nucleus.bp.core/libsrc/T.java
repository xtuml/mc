//====================================================================
//
//File:      $RCSfile: T.java,v $
//Version:   $Revision: 1.1.20.1 $
//Modified:  $Date: 2013/01/02 18:02:12 $
//
//(c) Copyright 2004-2012 by Mentor Graphics Corp. All rights reserved.
//
//====================================================================
package lib;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.variables.VariablesPlugin;

import com.mentor.nucleus.bp.core.AttributeValue_c;
import com.mentor.nucleus.bp.core.Attribute_c;
import com.mentor.nucleus.bp.core.BlockInStackFrame_c;
import com.mentor.nucleus.bp.core.ComponentPackage_c;
import com.mentor.nucleus.bp.core.Component_c;
import com.mentor.nucleus.bp.core.CorePlugin;
import com.mentor.nucleus.bp.core.DataType_c;
import com.mentor.nucleus.bp.core.DomainAsComponent_c;
import com.mentor.nucleus.bp.core.Domain_c;
import com.mentor.nucleus.bp.core.InstanceHandle_c;
import com.mentor.nucleus.bp.core.InstanceInReference_c;
import com.mentor.nucleus.bp.core.InstanceReferenceValue_c;
import com.mentor.nucleus.bp.core.Instance_c;
import com.mentor.nucleus.bp.core.LocalReference_c;
import com.mentor.nucleus.bp.core.LocalValue_c;
import com.mentor.nucleus.bp.core.Local_c;
import com.mentor.nucleus.bp.core.ModelClass_c;
import com.mentor.nucleus.bp.core.Ooaofooa;
import com.mentor.nucleus.bp.core.RuntimeValue_c;
import com.mentor.nucleus.bp.core.SimpleValue_c;
import com.mentor.nucleus.bp.core.StackFrame_c;
import com.mentor.nucleus.bp.core.Subsystem_c;
import com.mentor.nucleus.bp.core.SystemModel_c;
import com.mentor.nucleus.bp.core.TransientVar_c;
import com.mentor.nucleus.bp.core.Variable_c;
import com.mentor.nucleus.bp.core.common.ClassQueryInterface_c;

public class T {
	
	private static String outputBuffer = new String();
	
	private static String templatePath = "";
	
	public static void t() {
		Ooaofooa ooaofooa = Ooaofooa.getDefaultInstance();
		SystemModel_c mdl = SystemModel_c.SystemModelInstance(ooaofooa, new ClassQueryInterface_c() {
			@Override
			public boolean evaluate(Object arg0) {
				// Auto-generated method stub
				CorePlugin.out.println(((SystemModel_c)arg0).getName());
				return ((SystemModel_c)arg0).getName().toLowerCase().contains("watch");
			}
		});
		Attribute_c[] attrs = Attribute_c.getManyO_ATTRsOnR102(ModelClass_c.getManyO_OBJsOnR2(Subsystem_c.getManyS_SSsOnR1(Domain_c.getManyS_DOMsOnR4204(DomainAsComponent_c.getManyCN_DCsOnR4204(Component_c.getManyC_CsOnR4604(ComponentPackage_c.getManyCP_CPsOnR4602(mdl)))))));
		for (Attribute_c attr : attrs) {
			DataType_c data = DataType_c.getOneS_DTOnR114(attr);
			CorePlugin.out.println(data ==null ? attr.getName() + " has no datatype" : attr.getName() + ":" + data.getName());
		}
		
	}
	
	public static void include(StackFrame_c stackFrame, String templateFileName) {
		// Obtain the set of local values in the calling context
		Object persistenceResource = stackFrame.getModelRoot().getPersistenceFile();
        if (persistenceResource instanceof IFile) {
        	templatePath = ((IFile)persistenceResource).getProject().getLocation().append("gen\\").toOSString();
        }
		
	    // Open the file
		File templateFile = new File(templatePath + templateFileName);
		try {
		  BufferedReader br = new BufferedReader(new FileReader(templateFile));

		  // Get ready to read and match
		  String inputBuffer = "";
		  while (inputBuffer != null) {
			inputBuffer = br.readLine();
			if (inputBuffer != null && inputBuffer.length() > 0) {
				char lastChar = inputBuffer.charAt(inputBuffer.length() - 1);
				  outputBuffer += process(stackFrame, inputBuffer.substring(0, inputBuffer.length() - 1)
					      + (lastChar == '\\' ? "" : lastChar + "\n"));
			}
		  }
		  br.close();
		}
		catch (FileNotFoundException fne) {
			CorePlugin.logError("File not found.", fne);
		}
		catch (IOException ioe) {
			CorePlugin.logError("Unable to read file.", ioe);
		}
	}
	
	public static String template(StackFrame_c stackFrame, String templateFileName, boolean indent) {
		// Obtain the set of local values in the calling context
		String outputBuffer = "";
		Object persistenceResource = stackFrame.getModelRoot().getPersistenceFile();
        if (persistenceResource instanceof IFile) {
        	templatePath = ((IFile)persistenceResource).getProject().
        	                getLocation().append("gen\\").toOSString();
        }
		
	    // Open the file
		File templateFile = new File(templatePath + templateFileName);
		try {
		  BufferedReader br = new BufferedReader(new FileReader(templateFile));

		  // Get ready to read and match
		  String inputBuffer = "";
		  while (inputBuffer != null) {
			inputBuffer = br.readLine();
			if (inputBuffer != null && inputBuffer.length() > 0) {
				char lastChar = inputBuffer.charAt(inputBuffer.length() - 1);
				  outputBuffer += process(stackFrame, inputBuffer.substring(0, inputBuffer.length() - 1)
				      + (lastChar == '\\' ? "" : lastChar + "\n"));
			}
		  }
		  // post process string
		  if (indent) {
			  outputBuffer = "    " + outputBuffer.replaceAll("\\n", "\n    ");
			  if ("    ".equals(outputBuffer.substring(outputBuffer.length() - 4))) {
				  outputBuffer = outputBuffer.substring(0, outputBuffer.length() - 4);
			  }
		  }

		  
		  br.close();
		}
		catch (FileNotFoundException fne) {
			CorePlugin.logError("File not found.", fne);
		}
		catch (IOException ioe) {
			CorePlugin.logError("Unable to read file.", ioe);
		}
		return outputBuffer;
	}
	public static void write(StackFrame_c stackFrame, String content) {
		outputBuffer += process(stackFrame, content);
	}
    public static void print(String s){
        CorePlugin.out.print(s);
    }
    public static void b (String s){
        outputBuffer+=s;
    }
    public static String c(String s){
        for (int i = 0; i < s.length(); i++) {

            if (i == 0) {
                s = String.format( "%s%s",
                        Character.toUpperCase(s.charAt(0)),
                        s.substring(1) );
            }
            if (!Character.isLetterOrDigit(s.charAt(i))) {
                if (i + 1 < s.length()) {
                    s = String.format( "%s%s%s",
                            s.subSequence(0, i+1),
                            Character.toUpperCase(s.charAt(i + 1)),
                            s.substring(i+2) );
                }
            }

        }

        return s;
    }
    public static String l(String s){
        return s.toLowerCase();
    }
    public static String r (String s){
        return s.replaceAll(" ","");
    }
    public static String s(int i){
        debugLog("Converting integer " + i + " to string");
        return ""+i;
    }
    public static String u(String s){
        return s.toUpperCase();
    }
    public static String u_(String s){
        return s.toUpperCase().replaceAll(" ","_");
    }
    public static String underscore(String s){
        return s.replaceAll(" ","_");
    }
	public static String process(StackFrame_c stackFrame, String input) {
		  // Set up the matching expression
	      // Pattern below matches:
		  // "$<up to 2 format characters>{<a sequence of alpha characters, possibly containing a '.'>}"
		  // The optional 'eclipse:' prefix to the name inside the braces allows
          // specification of eclipse variable values in the output.
		  // Also sets up 2 to 4 groups with the useful string values.
		  String pattern = "\\$([UuCcLl_RrOoXx]{0,2})\\{(eclipse:)?([\\w]+)(\\.[\\w]+)?\\}";
		  Pattern pat = Pattern.compile(pattern);

		  Matcher mat = pat.matcher(input);
		  
		  String result = "";
		  int posn = 0;
		  boolean eclipseVar = false;
		  while (mat.find(posn)) {
			MatchResult res = mat.toMatchResult();
			String plainText = input.substring(posn, res.start());
			posn = res.end();
			String formatChars = mat.group(1);
			if (mat.group(2) != null) {
				eclipseVar = true;
			}
			String instRefName = mat.group(3);
			String attrName = "";
			if (mat.group(4) != null) {
				attrName = mat.group(4).substring(1); // lose a leading '.'
			}
			if (eclipseVar) {
			  result += plainText + format(formatChars, getEclipseVar(instRefName));	
			}
			else {
			  result += plainText + format(formatChars,
					                          getValue(stackFrame,
                                                    instRefName, attrName));
			}
		  }
		  // Copy out trailing plain text
		  return result + input.substring(posn);
    }
	private static String getEclipseVar(String instRefName) {
		try {
		  return VariablesPlugin.getDefault().getStringVariableManager().
		                    performStringSubstitution("${" + instRefName + "}");
		}
		catch (CoreException ce){
			CorePlugin.logError(
				    "Error obtaining the value of eclipse variable, '" +
                                                         instRefName +"'.", ce);			
		}
		return null;
	}

	private static String format(String formatChars, String substitute) {
		String toFormat = "";
		String lcFormatChars = formatChars.toLowerCase();
		if (substitute != null) {
		  toFormat = substitute;
		  if (lcFormatChars.contains("l")) {
			toFormat = toFormat.toLowerCase(); 
		  }
		  else {
			if (lcFormatChars.contains("u")) {
				toFormat = toFormat.toUpperCase();
			}
		  }
		  String [] nonWS = toFormat.split(" ", -1);
		  String sep = "";
		  toFormat = "";
		  for (int i = 0; i < nonWS.length; i++) {
		    if (lcFormatChars.contains("c")) {
			  // Capitalize the first letter
			  nonWS[i] = nonWS[i].substring(0, 1).toUpperCase() +
                                                          nonWS[i].substring(1);
		    }
		    toFormat += sep + nonWS[i];
		    if (lcFormatChars.contains("_")) {
		      sep = "_";
		    }
		    else if (!lcFormatChars.toLowerCase().contains("r")) {
			  // If r is _not_ present, separator is a space,
			  sep = " ";
		    }
		    // else its the empty string because we want to concatenate.
		  }
		}
		if (lcFormatChars.contains("x")) {
			return xmlify(toFormat);
		}
		else {
		  return toFormat;
		}
	}

	public static String getValue(StackFrame_c stackFrame,
			                        final String instRefName, String optionalAttrName) {
        Local_c[] locals = Local_c.getManyL_LCLsOnR3000(
        		          BlockInStackFrame_c.getManyI_BSFsOnR2923(stackFrame));
		if (optionalAttrName != "") {
		  // select many variables related by locals->L_LCR[R3001]->
		  //       V_INT[R3004]->V_VAR[R814] where selected.Name == instRefName;
		
		  class VariableTest implements ClassQueryInterface_c {
			public boolean evaluate(Object candidate) {
				Variable_c selected = (Variable_c) candidate;
				return selected.getName().equals(instRefName);
			}
		  }
		  Variable_c [] vars = Variable_c.getManyV_VARsOnR814(
				           InstanceHandle_c.getManyV_INTsOnR3004(
						     LocalReference_c.getManyL_LCRsOnR3001(locals)),
                                                            new VariableTest());
		  // if cardinality vars == 1
		  if (vars.length == 1) {
			// There is exactly one variable of that name in scope
			// select many filteredLocals related by vars->V_INT[R814]->
			//                                       L_LCR[R3004]->L_LCL[R3001];
			Local_c [] filteredLocals = Local_c.getManyL_LCLsOnR3001(
					      LocalReference_c.getManyL_LCRsOnR3004(
							    InstanceHandle_c.getManyV_INTsOnR814(vars[0])));
			// for each local in filteredLocals
			boolean localFound = false;
			Local_c local = null;
			for (int i = 0; i < filteredLocals.length; i++) {
				local = filteredLocals[i];
				// for each passedLocal in locals
				for (int j = 0; j < locals.length; j++) {
					Local_c passedLocal = locals[j];
					// if local == passedLocal
					if (local.equals(passedLocal)) {
						localFound = true;
						break;
					}
				}
				if (localFound) {
					break;
				}
			}
			if (localFound) {
			  // select many instances related by local->RV_RVL[R3306]->
			  //       RV_SMV[R3300]->RV_IRV[R3308]->L_IIR[R3311]->I_INS[R3013];
			  Instance_c [] instances = Instance_c.getManyI_INSsOnR3013(
					  InstanceInReference_c.getManyL_IIRsOnR3311(
							  InstanceReferenceValue_c.getOneRV_IRVOnR3308(
									SimpleValue_c.getOneRV_SMVOnR3300(
										RuntimeValue_c.getOneRV_RVLOnR3306(
												                     local)))));
			  // if cardinality instances == 1
			  if (instances.length == 1) {
				// select many attribute values related by instances->
				//                                                 I_AVL[R2909];
				AttributeValue_c [] avls =
                            AttributeValue_c.getManyI_AVLsOnR2909(instances[0]);
				// for each avl in avls
				for (int i = 0; i < avls.length; i++) {
					AttributeValue_c avl = avls[i];
					// select one attr related by avl->O_ATTR[R2910];
					Attribute_c attr = Attribute_c.getOneO_ATTROnR2910(avl);
					// if attr.Name == attrName
					if (attr.getName().equals(optionalAttrName)) {
						return avl.getValue();
					}
				}
				// If we get here, the attribute name was not found
				CorePlugin.logError(
				    "Cannot find attribute value for " + instRefName + "."
				                                      + optionalAttrName +
                 ". The attribute value must have been written by Verifier," +
                                  " even if the desired value is empty.", null);
			  }
			  else {
				CorePlugin.logError(
						    "Cannot reference a set in a template file.", null);
			  }
				  
			}
			else {
			  if (vars.length == 0) {
				CorePlugin.logError("Variable " + instRefName +
                                                           " not found.", null);
			  }
			  else {
				CorePlugin.logError("More than one variable " +
                                                 instRefName + " found.", null);
			  }
			}
		  }
		}
		else {
		  // select many variables related by locals->L_LVL[R3001]->
		  //       V_TRN[R3005]->V_VAR[R814] where selected.Name == instRefName;
			
		  class VariableTest implements ClassQueryInterface_c {
			public boolean evaluate(Object candidate) {
				Variable_c selected = (Variable_c) candidate;
				return selected.getName().equals(instRefName);
			}
		  }
		  Variable_c [] vars = Variable_c.getManyV_VARsOnR814(
					           TransientVar_c.getManyV_TRNsOnR3005(
							     LocalValue_c.getManyL_LVLsOnR3001(locals)),
	                                                        new VariableTest());
		  // if cardinality vars == 1
		  if (vars.length == 1) {
			// There is exactly one variable of that name in scope
			// select many filteredLocals related by vars->V_INT[R814]->
			//                                       L_LCR[R3004]->L_LCL[R3001];
			Local_c [] filteredLocals = Local_c.getManyL_LCLsOnR3001(
						      LocalValue_c.getManyL_LVLsOnR3005(
								  TransientVar_c.getManyV_TRNsOnR814(vars[0])));
			// for each local in filteredLocals
			boolean localFound = false;
			Local_c local = null;
			for (int i = 0; i < filteredLocals.length; i++) {
				local = filteredLocals[i];
				// for each passedLocal in locals
				for (int j = 0; j < locals.length; j++) {
					Local_c passedLocal = locals[j];
					// if local == passedLocal
					if (local.equals(passedLocal)) {
						localFound = true;
						break;
					}
				}
				if (localFound) {
					break;
				}
			}
			if (localFound) {
				RuntimeValue_c rv = RuntimeValue_c.getOneRV_RVLOnR3306(local);
				Object value = rv.Getvalue().toString();
				if (value instanceof String || value instanceof Integer ||
                                                       value instanceof Float) {
				  return rv.Getvalue().toString();
				}
				else {
					CorePlugin.logError("Substitution variable: " +
                                                             instRefName +
                             " must be a string, integer or real value.", null);
				}
			}
			else {
				CorePlugin.logError("Substitution variable: " +
                                             instRefName + " not found.", null);
			}
	      }
		  else {
			if (vars.length == 0) {
			  CorePlugin.logError("Variable " + instRefName +
                                                           " not found.", null);
			}
			else {
			  CorePlugin.logError("More than one variable " +
                                                 instRefName + " found.", null);
			}
		  }
		}
		return null;
	}

	private static String xmlify(String s) {
	    debugLog("xmlify-ing string " + s);
		String result = null;
		if (s != null) {
			result = new String();
			StringCharacterIterator sci = new StringCharacterIterator(s);
			char character = sci.current();
			while (character != CharacterIterator.DONE) {
			    debugLog("  - " + character);
				if (character == '<') {
					result += "&lt;";
				}
				else if (character == '>') {
					result += "&gt;";
				}
				else if (character == '&') {
					result += "&amp;";
				}
				else if (character == '\"') {
					result += "&quot;";
				}
				else if (character == '\'') {
					result += "&apos;";
				}
				else {
					result += character;
				}
				character = sci.next();
			}
		}
		debugLog("  ** returning string " + result);
		return result;
	}

	public static void emit(StackFrame_c stackFrame, String outputFileName) {
		Object persistenceResource = stackFrame.getModelRoot().getPersistenceFile();
        if (persistenceResource instanceof IFile) {
        	templatePath = ((IFile)persistenceResource).getProject().
        	                getLocation().append("gen\\").toOSString();
        }
		
		File outputFile = new File(templatePath + outputFileName);
		debugLog("Emitting to file: " + outputFile.toString());
		//debugLog("-----");
		//debugLog(outputBuffer);
		///debugLog("-----");
		try {
		  BufferedWriter bw = new BufferedWriter(new FileWriter(outputFile));
		  bw.append(outputBuffer);
		  bw.flush();
		  bw.close();
		}
		catch (FileNotFoundException fne) {
			CorePlugin.logError("File not found.", fne);
		}
		catch (IOException ioe) {
			CorePlugin.logError("Unable to open file for writing.", ioe);
		}
		// Docgen assumes that files have an append functionality.
		// Otherwise there would be a call to clear() here.
	}
	
	public static void clear() {
		outputBuffer = "";
	}
	
    private static void debugLog(String msg) {
        boolean debugOn = false;
        if ( debugOn == true ) {
            LOG.LogInfo(msg);
        }
    }

}
