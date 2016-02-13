import java.io.*;

public interface Serial {

    // set output
    public void setOutput( PrintStream out );

    // populate
    public void populate( String classname, String[] value );

    // render
    public void render( String element, String name );

    // tostring
    public void tostring( String element, String name );

    // validate
    public void validate( String element );

}
