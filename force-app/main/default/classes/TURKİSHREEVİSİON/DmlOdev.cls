public class DmlOdev {    
    public static void  DmlInsert() {

        list<account>  listAccInsert= new  list<account> ();
        account   ac1= new  account();
        ac1.Name='Assignment 1';
        ac1.phone='6564656854';
        ac1.site='london';
        ac1.Website='www.kghkf.com';
        listAccInsert.add(ac1);

        account   ac2= new  account();
        ac2.Name='Assignment 2';
        ac2.phone='656465686458';
        ac2.site='Ankara';
        ac2.Website='www.kkkkkf.com';
        listAccInsert.add(ac2);
        insert listAccInsert;
    }     
     public static void  DmlUpdate(){
        list<account>  listAccUpdate= new  list<account> ();
        account accQuery=[select name, phone from account where name='Assignment 1'];
        accQuery.Name='Assignment Yeni 1';
        accQuery.phone='65487454';
        listAccUpdate.add(accQuery);      

        account accQuery2=[select name, phone from account where name='Assignment 2'];
        accQuery2.Name='Assignment Yeni 2';
        accQuery2.phone='65485554';
        listAccUpdate.add(accQuery2);
         
        update listAccUpdate;     
        delete listAccUpdate;
    }   
     public static void deleteAccount(){

       list<account>  delList=[select name,Phone from account where name like '%Assignment%'];

       delete delList;
     }

     public static void addOPP149(){

        list<Opportunity> yeni149List= new list<Opportunity>();       

        for (Integer i = 1; i < 150; i++) {           
            Opportunity new149= new opportunity ();
            new149.name='Homework';
            new149.type='New Customer';
            new149.stagename='Qualification';
            new149.closedate=date.newInstance(2024,02, 02);
            new149.description='Description i dolu olmalı.';
            yeni149List.add(new149);            
        }
        insert yeni149List;
       
     }

     public static void deleteOpp(){

        List<Opportunity> delOpp=[select name from Opportunity where name like '%Homework%'];
        delete delOpp;
     }         
}
