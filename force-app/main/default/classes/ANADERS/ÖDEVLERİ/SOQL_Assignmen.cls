public class SOQL_Assignmen {
    public static void soql_WhereClause() {

        list<Contact> lstcontac = [select id, name from Contact where name like'A%'];

        system.debug( ' Contacts with '+'A' +'is -->'+lstcontac);       
        system.debug('Size of list is : '+lstcontac.size() );
    }

    public static void soql_FromMethod(){        
        list<Contact> lstcontac = [select id, lastname, phone from Contact];
       
        for (contact  allcontacts :lstcontac) {

          string lName=allcontacts.lastname;

          string lPhone=allcontacts.phone;

          system.debug('Contact Last Name = '+ lName +' ===>   ' + ' Phone Number = '+lPhone  );
            
        }
    }
}
