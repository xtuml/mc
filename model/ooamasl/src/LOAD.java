public interface LOAD {
    public Object create(String key_letters) throws XtumlException;
    public void load(String java_class, String[] args) throws XtumlException;
    public void relate(Object form, Object part, int rel_num, String phrase) throws XtumlException;
    public void relate_using(Object form, Object part, Object link, int rel_num, String phrase) throws XtumlException;
    public void set_attribute(Object instance, String attribute_name, Object value) throws XtumlException;
}
