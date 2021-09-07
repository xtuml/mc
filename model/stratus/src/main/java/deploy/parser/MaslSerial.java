package deploy.parser;

import java.io.PrintStream;

public class MaslSerial implements Serial {

    private PrintStream output;

    public MaslSerial() {
        output = System.out;
    }

    // set output stream
    public void setOutput(PrintStream out) {
        if (null != out) {
            output = out;
        }
    }
}
