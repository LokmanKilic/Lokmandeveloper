public class Soqlodev {    
      public static void  soqlChild() {    
         list<Contact> lstContacts= [select id, name,account.name, account.id from contact ];
         System.debug(lstContacts);          
         for (contact  lstcon: lstContacts) {             
           System.debug('contact Name--> '+lstcon.Name+ ' Contact ID '+lstcon.Id+  '   Acoount ID --->' + lstcon.Account.Id + ' Account Name---> '+lstcon.Account.name);            
         }        
      }

      public static void soqlMaster() {

            list<Account> lstaccount= [select id, name,(select id,name from Contacts) from Account ];
         System.debug(lstaccount);

         for (account lstacc : lstaccount) {

             string accID=lstacc.id;
             string accNam=lstacc.name;
             //System.debug(accID+accNam);
            List<Contact> eacCon= lstacc.contacts;
             for (Contact  eacCon2: eacCon ) {

            System.debug('Account Id--> '+accID+ ' Account Name--> '+accNam+ 'Contact Name ===> '+ eacCon2.name+ ' Contact ID===> '+eacCon2.ID);
                  
             }
            
         }
            
      }

}
