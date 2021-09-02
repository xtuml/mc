package org.xtuml.stratus.parser;

import java.io.*;
import java.util.regex.Matcher;

public class MaslSerial implements Serial {

    private PrintStream     output;             // output stream

    // public constructor
    public MaslSerial() {
        output = System.out;
    }

    // set output stream
    public void setOutput( PrintStream out ) {
        if ( null != out ) {
            output = out;
        }
    }
}
