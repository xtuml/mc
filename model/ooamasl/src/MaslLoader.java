import java.io.*;

public class MaslLoader implements LOAD {
    private PrintStream output;
    private String current_object = "";

    public MaslLoader() {
        output = System.out;
    }

    public Object create(String key_letters) throws XtumlException {
        current_object = key_letters;
        output.println( "create object instance i of " + key_letters );
        return null;
    }
    public void load(String java_class, String[] args) throws XtumlException {
        output.println( "load" );
    }
    public void relate(Object form, Object part, int rel_num, String phrase) throws XtumlException {
        output.println( "relate form to part across R" + rel_num + "." + phrase );
    }
    public void relate_using(Object form, Object part, Object link, int rel_num, String phrase) throws XtumlException {
        output.println( "relate_using" );
    }
    public void set_attribute(Object instance, String attribute_name, Object value) throws XtumlException {
        output.println( "set_attribute " + current_object + "." + attribute_name + " = " + value );
    }
}
