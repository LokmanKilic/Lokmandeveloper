        
   
        trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
            if (Trigger.isBefore) {
                system.debug('call updateDescription NOW.');
                AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
                system.debug('Called updateDescription DONE already.');
            }
            if (Trigger.isAfter && Trigger.isInsert) {
                AccountQueueableExample aq = new AccountQueueableExample(trigger.new);
                id jobId = system.enqueueJob(aq);
            }
            if (Trigger.isAfter && Trigger.isUpdate) {
                //HERE we call handler method to update all contacts VIP field
                AccountTriggerHandler.updateVIPforContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            }
    
    
        
    
    
    
    
    
    
    
        /* 
        if (Trigger.isBefore) {
            AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
        if (Trigger.isAfter && Trigger.isUpdate) {
            //HERE we call handler method to update all contacts VIP field
            AccountTriggerHandler.updateVIPforContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
     */
    
    
        /*
        if (trigger.isAfter && trigger.isUpdate) {
            system.debug('after update trigger');
    
            map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
            map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
            
            set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
            set<id> accountIdsOld = accTriggerOldMap.keySet();//all ids of oldMap
            system.debug('accountids -> ' + accountIds);
            system.debug('accountIdsOld -> ' + accountIdsOld);
     
            integer countWebsite = 0;
    
            for (Id eachId : accountIds) {
                //get NEW account value from NewMap - id is same in newmap and oldmap
                account newAcc = accTriggerNewMap.get(eachId);
                string newWebsite = newAcc.Website;
                system.debug('** newWebsite -> ' + newWebsite);
                //get OLD account value from OldMap
                account oldAcc = accTriggerOldMap.get(eachId);
                string oldWebsite = oldAcc.Website;
                system.debug('** oldWebsite -> ' + oldWebsite);
    
                if (newWebsite != oldWebsite) {
                    system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                    countwebsite++;
                }
               
            }
            system.debug('website updated for # of accounts => ' + countwebsite);
        }*/
    
        
        /*List<account> accTriggerOld = trigger.old; //list of old records
        List<account> accTriggerNew = trigger.new; //list of new records
        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
    
    
        if (Trigger.isAfter && Trigger.isUpdate) {
    
            //old account name and new account name using ONE for loop.
            
            //get set of id using map.
            set<id> accountIds = accTriggerNewMap.keySet();
            for (Id eachId : accountIds) {
                //get NEW account value from NewMap - id is same in newmap and oldmap
                account newAcc = accTriggerNewMap.get(eachId);
                system.debug('NEW Acc Name is ' +  newacc.Name);
                //get OLD account value from OldMap
                account oldAcc = accTriggerOldMap.get(eachId);
                system.debug('Old Acc Name is ' +  oldacc.Name);
            }
        }*/
        /*
        //what elements we have in these maps.
        if (Trigger.isBefore && Trigger.isInsert) {
            system.debug('before insert old => ' + accTriggerOld);
            system.debug('before insert new => ' + accTriggernew);
            system.debug('before insert old map => ' + accTriggerOldMap);
            system.debug('before insert new map => ' + accTriggernewMap);
        }
        if (Trigger.isAfter && Trigger.isInsert) {
            system.debug('after insert old => ' + accTriggerOld);
            system.debug('after insert new => ' + accTriggernew);
            system.debug('after insert old map => ' + accTriggerOldMap);
            system.debug('after insert new map => ' + accTriggernewMap);
        }
    
        if (Trigger.isBefore && Trigger.isUpdate) {
            system.debug('before update old => ' + accTriggerOld);
            system.debug('before update new => ' + accTriggernew);
            system.debug('before Update old map => ' + accTriggerOldMap);
            system.debug('before Update new map => ' + accTriggernewMap);
        }
        if (Trigger.isAfter && Trigger.isUpdate) {
            system.debug('after update old => ' + accTriggerOld);
            system.debug('after update new => ' + accTriggernew);
            system.debug('after Update old map => ' + accTriggerOldMap);
            system.debug('after Update new map => ' + accTriggernewMap);
        }*/
        
        /*
        if (trigger.isAfter) {
            List<account> accTriggerNew = trigger.New;//New (updated) values of records
    
            set<id> setIds = new set<id>();//add all IDS of accounts which are inserted/updated
            for (account newAcc : accTriggerNew) {
                Id accId = newAcc.id;
                setids.add(accId);//adding ID to newly created set.
            }
            system.debug(setids);
        }
        */
        /*
        if (trigger.isBefore && trigger.isUpdate) {
            List<account> accTriggerOld = trigger.old;//OLD (previous) values of records
            for (account oldAcc : accTriggerOld) {
                system.debug('old acc name = ' + oldAcc.Name + ', old acc id => ' + oldAcc.Id);
            }
    
            List<account> accTriggerNew = trigger.New;//New (updated) values of records
            for (account newAcc : accTriggerNew) {
                system.debug('new acc name = ' + newAcc.Name + ', new acc id => ' + newAcc.Id);
            }
        }*/
        
        /*
        if (Trigger.isBefore && Trigger.isInsert) {
            system.debug('account before insert trigger.old -> ' + trigger.old);
        }
        if (Trigger.isAfter && Trigger.isInsert) {
            system.debug('account after insert trigger.old -> ' + trigger.old);
        }
        if (Trigger.isBefore && Trigger.isUpdate) {
            system.debug('account before Update trigger.old -> ' + trigger.old);
        }
        if (Trigger.isAfter && Trigger.isUpdate) {
            system.debug('account after Update trigger.old -> ' + trigger.old);
        }
        */
    
    
    
        /*
        list<account> accTriggerNew = trigger.new;
        if (Trigger.isBefore && Trigger.isUpdate) {
            system.debug('BEFORE UPDATE new record ==> '  + accTriggerNew);
            system.debug('BEFORE UPDATE  new accounts size ==> ' + accTriggerNew.size());
    
            for (account eachAcc : accTriggerNew) {
                system.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
            }
        }
        if (Trigger.isAfter && Trigger.isUpdate) {
            system.debug('AFTER newly UPDATE record ==> '  + accTriggerNew);
            system.debug('AFTER newly UPDATE accounts size ==> ' + accTriggerNew.size());
    
            for (account eachAcc : accTriggerNew) {
                system.debug('AFTER UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
            }
        }*/
    
    
    
       /*if (Trigger.isBefore && Trigger.isInsert) {
            system.debug('BEFORE INSERT new record ==> '  + accTriggerNew);
            system.debug('BEFORE INSERT  new accounts size ==> ' + accTriggerNew.size());
    
            for (account eachAcc : accTriggerNew) {
                system.debug('BEFORE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
            }
        }
        if (Trigger.isAfter && Trigger.isInsert) {
            system.debug('AFTER newly inserted record ==> '  + accTriggerNew);
            system.debug('AFTER newly inserted accounts size ==> ' + accTriggerNew.size());
    
            for (account eachAcc : accTriggerNew) {
                system.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
            }
        }*/
    
    
        /*
        //insert
        if (trigger.isInsert && trigger.isAfter) {
            system.debug('account after insert trigger called');
        }
    
        if (trigger.isInsert && trigger.isBefore) {
            system.debug('account before insert trigger called');
        }
        
        //update
        if (trigger.isUpdate && Trigger.isBefore) {
            system.debug('account Before UPDATE trigger called');
        }
        if (trigger.isUpdate && Trigger.isAfter) {
            system.debug('account after UPDATE trigger called');
        }*/
        
        
        
        /*//before insert
        if (Trigger.isInsert) {
            system.debug('account before INSERT trigger called.'); //when will this code run?
        }
        if (Trigger.isUpdate) {
            system.debug('account before UPDATE trigger called.');
        }
         */
    
        /*
        if (Trigger.isBefore) {
            system.debug('account before insert trigger called.');
        }
        if (Trigger.isAfter) {
            system.debug('account after insert trigger called');
        }
        */
        
    }  
    
    
    
    






    



    
//=================================== TURKCE DERS =========================================================================================
    // 2. Bir account update edildi??inde name de??i??mi??se description fieldine name de??i??ti mesaj?? yazd??r..
        
    /* ?? (trigger.isBefore&&trigger.isUpdate) {

     for (account  acc: trigger.new) {

        if (acc.Name !=trigger.oldMap.get(acc.Id).Name) {
            
            acc.description=' Bu recordun ismi de??i??ti';
        }
        
     }        
    } */
    // 7 version 2

/* 
        if (trigger.isBefore&&trigger.isUpdate) {

            Map<Id,account> newMap=trigger.newMap;
            Map<Id,account> oldMap=trigger.newOld; 

            for (account  acc: trigger.new) {

                if (newMap.get(acc.id).name != oldMap.get(acc.Id).Name) {
                    acc.description=' Bu recordun ismi de??i??ti';
                    
                }

            
        }
        
     }        
     */
    /* if (trigger.isBefore && trigger.isUpdate) {
        for (account acc : trigger.new) {
            if (acc.phone != trigger.oldMap.get(acc.Id).Phone) {
                acc.Description = 'Bu recordun telefon numarasi degisti..';
            }
            if (acc.name != trigger.oldMap.get(acc.id).name) {
                acc.Name.addError('isim degisikligi yapamazsiniz..');
            }
        }
    }
 */
  
    
           
/* 
//1 Account create edildi??inde. ona ba??l?? 7 tane Contact otomatik olarak create edilsin. 
first name'i account name ile ayn?? olsun. last name i contact 1 2 3.. diye isimlendirilsin..


    if (trigger.isAfter && trigger.isInsert) {
        List<Contact> conList = new List<Contact>();
        for (account acc : trigger.new) {
            for (Integer i = 1; i <= 7; i++) {
                contact c = new contact();
                c.FirstName = acc.name;
                c.LastName = 'Contact ' + i;
                c.AccountId = acc.id;
                conList.add(c);
            }
        }


        insert conList;
     }

 */






    //==========================================   Turkce DERS==============================
    
    
    /* 
    
    
    
    if (Trigger.isBefore) {
    

    AccountTriggerHandler.updateDescription(Trigger.New,Trigger.Old, Trigger.NewMap,Trigger.OldMap);


    }
         */

    
    /* if (Trigger.isBefore) {
        for (account eachAcc : Trigger.new) {
            boolean updateDesc = false;
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                //just update field
                updateDesc = true;
            }
            //if account is updated.
                //check if active field is changed from not yes to yes
                //then update description
            if (Trigger.isUpdate) {
                //get old account using OldMAP
                Account oldAccount = Trigger.OldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = Trigger.NewMap.get(eachAcc.Id);
                //oldAccount.Active__c != newAccount.Active__c
                if (eachAcc.Active__c == 'Yes' &&
                   oldAccount.Active__c != newAccount.Active__c ) {
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is now active. Enjoy buddy!!';
            }
        }
    } */

    
    
    
    
    
    
    
    /* if (Trigger.isBefore) {
        for (account eachAcc : Trigger.new) {
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                //just update field
                eachAcc.Description = 'Account is now active. Enjoy buddy!!';
            }          

            //if account is updated.
                //check if active field is changed from not yes to yes
                //then update description
            if (Trigger.isUpdate) {
                //get old account using OldMAP
                Account oldAccount = Trigger.OldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = Trigger.NewMap.get(eachAcc.Id);
                //oldAccount.Active__c != newAccount.Active__c
                if (eachAcc.Active__c == 'Yes' &&
                   oldAccount.Active__c != newAccount.Active__c ) {
                   eachAcc.Description = 'Account is NOW ACTIVE. You must Enjoy!';
                }
            }
        }
    }
 */


    /*
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        set<id> accountIdsOld = accTriggerOldMap.keySet();//all ids of oldMap
        system.debug('accountids -> ' + accountIds);
        system.debug('accountIdsOld -> ' + accountIdsOld);
 
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
           
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    }*/

    
    /*List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key


    if (Trigger.isAfter && Trigger.isUpdate) {

        //old account name and new account name using ONE for loop.
        
        //get set of id using map.
        set<id> accountIds = accTriggerNewMap.keySet();
        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('NEW Acc Name is ' +  newacc.Name);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('Old Acc Name is ' +  oldacc.Name);
        }
    }*/
    /*
    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old => ' + accTriggerOld);
        system.debug('before insert new => ' + accTriggernew);
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old => ' + accTriggerOld);
        system.debug('after insert new => ' + accTriggernew);
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old => ' + accTriggerOld);
        system.debug('before update new => ' + accTriggernew);
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old => ' + accTriggerOld);
        system.debug('after update new => ' + accTriggernew);
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    }*/
    
    /*
    if (trigger.isAfter) {
        List<account> accTriggerNew = trigger.New;//New (updated) values of records

        set<id> setIds = new set<id>();//add all IDS of accounts which are inserted/updated
        for (account newAcc : accTriggerNew) {
            Id accId = newAcc.id;
            setids.add(accId);//adding ID to newly created set.
        }
        system.debug(setids);
    }
    */
    /*
    if (trigger.isBefore && trigger.isUpdate) {
        List<account> accTriggerOld = trigger.old;//OLD (previous) values of records
        for (account oldAcc : accTriggerOld) {
            system.debug('old acc name = ' + oldAcc.Name + ', old acc id => ' + oldAcc.Id);
        }

        List<account> accTriggerNew = trigger.New;//New (updated) values of records
        for (account newAcc : accTriggerNew) {
            system.debug('new acc name = ' + newAcc.Name + ', new acc id => ' + newAcc.Id);
        }
    }*/
    
    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger.old -> ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger.old -> ' + trigger.old);
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before Update trigger.old -> ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after Update trigger.old -> ' + trigger.old);
    }
    */



    /*
    list<account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('BEFORE UPDATE new record ==> '  + accTriggerNew);
        system.debug('BEFORE UPDATE  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('AFTER newly UPDATE record ==> '  + accTriggerNew);
        system.debug('AFTER newly UPDATE accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }*/



   /*if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('BEFORE INSERT new record ==> '  + accTriggerNew);
        system.debug('BEFORE INSERT  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('AFTER newly inserted record ==> '  + accTriggerNew);
        system.debug('AFTER newly inserted accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }*/


    /*
    //insert
    if (trigger.isInsert && trigger.isAfter) {
        system.debug('account after insert trigger called');
    }

    if (trigger.isInsert && trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    
    //update
    if (trigger.isUpdate && Trigger.isBefore) {
        system.debug('account Before UPDATE trigger called');
    }
    if (trigger.isUpdate && Trigger.isAfter) {
        system.debug('account after UPDATE trigger called');
    }*/
    
    
    
    /*//before insert
    if (Trigger.isInsert) {
        system.debug('account before INSERT trigger called.'); //when will this code run?
    }
    if (Trigger.isUpdate) {
        system.debug('account before UPDATE trigger called.');
    }
     */

    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }
    */
    
