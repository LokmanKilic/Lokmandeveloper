public class DML2_Assn {
    
    public static void insert_dml() {

       account acc1=new account();
       acc1.Name= 'Assigment';    
       insert acc1;        

       account acc2=new account();
       acc2.Name='Burak';
       insert acc2;

     }

     public static void updating_dml() {

        account acc3=new account();
        acc3.Name= 'Account Created';    
        insert acc3;     
        
        acc3.Name='Account Update';
        update acc3; 
      }

      

      public static void createBulkContacts() {
        list<contact> cobNewList= new   list<contact>();
        contact cn1= new contact ();
        cn1.firstName='Mark';
        cn1.lastName='Rufalo';
        cobNewList.add(cn1);

        contact cn2= new contact ();
        cn2.firstName='Mark';
        cn2.lastName='Rufalo';
        cobNewList.add(cn2);
        
        contact cn3= new contact ();
        cn3.firstName='Chris';
        cn3.lastName='Hemsword';
        cobNewList.add(cn3);
        
        contact cn4= new contact ();
        cn4.firstName='Scarlett';
        cn4.lastName='Johansson';
        cobNewList.add(cn4);
        
        contact cn5= new contact ();
        cn5.firstName='Scarlett';
        cn5.lastName='Johansson';
        cobNewList.add(cn5);
        insert cobNewList;   
        System.debug(cobNewList);
     } 
      public static List<contact> searchForContacts(string laNm ) {

        List<contact> listContact = [select id,firstName, lastName from contact where lastName=: laNm];
        System.debug(listContact);

        return listContact;     
      
     } 
    }