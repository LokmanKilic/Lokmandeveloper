AccountsBatch ab = new AccountsBatch();
Id batchId = database.executeBatch(ab, 10);

/* List<account> hk=new List<account>();

List<account>  km=[select id,name  from account] ;

 for (account vt : km) {
    
    vt.description='';
     hk.add(vt);
 }
  
 update hk; */







