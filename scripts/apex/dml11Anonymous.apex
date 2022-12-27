

//Dml11.createAccountsAndContacts(8);

List<Contact> conList = [select id, lastName from Contact where lastName like '%Contact%' limit 5];
System.debug(conList.size());

//delete accList;
delete conList;

List<Account> accList = [select id, name from Account where name like '%Account%' limit 5];
System.debug(accList.size());
delete accList;


system.debug('delete sonrasi ' + accList.size());
System.debug('delete sonrasi ' + conList.size());