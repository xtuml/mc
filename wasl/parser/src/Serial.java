import java.io.*;

public interface Serial {

    // set output
    public void setOutput( PrintStream out );

    // populate
    public void populate( String classname, String[] value );

}
