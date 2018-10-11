import java.util.*;

public class RelationshipCache {

  private Map<String, Relationship> relationships;

  public RelationshipCache() {
      relationships = new HashMap<>();
  }

  public void addRelationship(String name, String role, String fromClass, String phrase, String conditionality, String multiplicity, String toClass ) {
      if ( !relationships.containsKey(name) ) {
          relationships.put(name, new Relationship(name));
      }
      relationships.get(name).addParticipant(role, fromClass, phrase, conditionality, multiplicity, toClass);
  }

  public void setType(String name, int type) {
      if ( relationships.containsKey(name) ) relationships.get(name).setType(type);
  }

  public void populate( Serial out ) {
      for ( String relName : relationships.keySet() ) {
          relationships.get(relName).populate(out);
      }
  }

  public static class Relationship {

      public static final int SIMP     = 0;
      public static final int ASSOC    = 1;
      public static final int SUBSUP   = 2;

      private String name;
      private int type;
      private List<Participation> participations;

      private String[] args = new String[8];

      public Relationship( String name ) {
          this.name = name;
          type = SIMP;
          participations = new ArrayList<>();
          clearArgs();
      }

      private void clearArgs() {
          for ( int i = 0; i < args.length; i++ ) args[i] = "";
      }

      public void setType( int type ) {
          this.type = type;
      }

      public void addParticipant( String role, String fromClass, String phrase, String conditionality, String multiplicity, String toClass ) {
          participations.add(new Participation(role, fromClass, phrase, conditionality, multiplicity, toClass));
      }

      public void populate( Serial out ) {
          // pre-declare objects
          Set<String> objects = new HashSet<>();
          for ( Participation part : participations ) {
              objects.add(part.fromClass);
              objects.add(part.toClass);
          }
          for ( String obj : objects ) {
              if ( !obj.isEmpty() ) {
                args[0] = obj;
                out.populate( "object", args );
                clearArgs();
                out.populate( "object", args );
              }
          }
          // populate relationship
          if ( SIMP == type ) {
              // populate regular relationship
              args[0] = name;
              out.populate( "regularrel", args );
              clearArgs();
              // populate participations
              for ( Participation part : participations ) {
                  args[1] = part.fromClass;
                  args[2] = part.phrase;
                  args[3] = part.conditionality;
                  args[4] = part.multiplicity;
                  args[6] = part.toClass;
                  out.populate( "participation", args );
                  clearArgs();
              }
              // end tags
              out.populate( "participation", args );
              out.populate( "regularrel", args );
          }
          else if ( ASSOC == type ) {
              // populate associative relationship
              args[0] = name;
              out.populate( "associative", args );
              clearArgs();
              // get three objects involved
              Participation objA = null, objB = null, objC = null;
              for ( Participation part : participations ) {
                  if ( "A".equals(part.role) ) objA = part;
                  else if ( "B".equals(part.role) ) objB = part;
                  else if ( "C".equals(part.role) ) objC = part;
              }
              // populate A to B
              args[1] = objA.fromClass;
              args[2] = objA.phrase;
              args[3] = objA.conditionality;
              args[4] = objA.multiplicity;
              args[6] = objB.fromClass;
              out.populate( "participation", args );
              clearArgs();
              // populate B to A
              args[1] = objB.fromClass;
              args[2] = objB.phrase;
              args[3] = objB.conditionality;
              args[4] = objB.multiplicity;
              args[6] = objA.fromClass;
              out.populate( "participation", args );
              clearArgs();
              // end tag
              out.populate( "participation", args );
              // populate associative relationship again with link class
              args[0] = name;
              args[2] = objC.fromClass;
              out.populate( "associative", args );
              clearArgs();
              // end tag
              out.populate( "associative", args );
          }
          else if ( SUBSUP == type ) {
              // populate subsuper relationship
              args[0] = name;
              out.populate( "subsuper", args );
              clearArgs();
              // get three objects involved
              Participation objA = null;
              for ( Participation part : participations ) {
                  if ( "A".equals(part.role) ) objA = part;
              }
              // populate supertype
              args[1] = objA.fromClass;
              args[6] = objA.toClass;
              out.populate( "participation", args );
              clearArgs();
              // populate all subtypes
              for ( Participation part : participations ) {
                  if ( "B".equals(part.role) ) {
                      args[1] = part.fromClass;
                      args[6] = part.toClass;
                      out.populate( "participation", args );
                      clearArgs();
                  }
              }
              // end tags
              out.populate( "participation", args );
              out.populate( "subsuper", args );
          }
      }

  }

  private static class Participation {

      public String role;
      public String fromClass;
      public String phrase;
      public String conditionality;
      public String multiplicity;
      public String toClass;

      public Participation( String role, String fromClass, String phrase, String conditionality, String multiplicity, String toClass ) {
          this.role = role;
          this.fromClass = fromClass;
          this.phrase = phrase;
          this.conditionality = conditionality;
          this.multiplicity = multiplicity;
          this.toClass = toClass;
      }

  }

}
