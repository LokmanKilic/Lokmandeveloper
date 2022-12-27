 trigger ContactTrigger on Contact  (before insert,after insert, before update, after update) {
    

    if (trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.cntDescription(Trigger.new,trigger.old,Trigger.NewMap,Trigger.OldMap);
    }










    


/* 

        if (Trigger.isBefore) {
            if (Trigger.isUpdate) {
                system.debug('we are in before update trigger.');
                ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
                ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            }
        }
       
     */
    
    





    //======================================================Turkce=========================================
    
    
   /*  
    //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
    
        if (trigger.isBefore && trigger.isInsert) {
            System.debug('Before Insert Trigger Tetiklendi..');
            System.debug('Trigger New = ' + trigger.new);
            System.debug('Trigger OLd = ' + trigger.old);
            System.debug('Trigger NewMap = ' + trigger.newMap);
            System.debug('Trigger OldMap = ' + trigger.oldMap);
            System.debug('========END===============');
        }
        if (trigger.isAfter && trigger.isInsert) {
            System.debug('After Insert Trigger Tetiklendi..');
            System.debug('Trigger New = ' + trigger.new);
            System.debug('Trigger OLd = ' + trigger.old);
            System.debug('Trigger NewMap = ' + trigger.newMap);
            System.debug('Trigger OldMap = ' + trigger.oldMap);
            System.debug('========END===============');
        }
        if (trigger.isBefore && trigger.isUpdate) {
            System.debug('Before Update Trigger Tetiklendi..');
            System.debug('Trigger New = ' + trigger.new);
            System.debug('Trigger OLd = ' + trigger.old);
            System.debug('Trigger NewMap = ' + trigger.newMap);
            System.debug('Trigger OldMap = ' + trigger.oldMap);
            System.debug('========END===============');
        }
        if (trigger.isAfter && trigger.isUpdate) {
            System.debug('After Update Trigger Tetiklendi..');
            System.debug('Trigger New = ' + trigger.new);
            System.debug('Trigger OLd = ' + trigger.old);
            System.debug('Trigger NewMap = ' + trigger.newMap);
            System.debug('Trigger OldMap = ' + trigger.oldMap);
            System.debug('========END===============');
        }
 */


















    /* 
    if (Trigger.isBefore) {
        if (Trigger.isUpdate) {
            system.debug('we are in before update trigger.');
            ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }
    */
  
  
  
  
  
  
  
  // if (trigger.isBefore) {

  //   System.debug('We are in BEFORE. Not saved');

  //   if (trigger.isInsert) {
  //       System.debug('we are in before insert tirigger');
        
  //   }
  //   if (trigger.isUpdate) {
  //       System.debug('we are in before UPDATE tirigger');

        
  //   }
    
  // }
  // if (trigger.isAfter) {

  //   System.debug('We are in AFTER. Not saved');

  //   if (trigger.isInsert) {
  //       System.debug('we are in after insert tirigger');
        
  //   }

  //   if (trigger.isUpdate) {
  //       System.debug('we are in after update tirigger');


        
  //   }
    
  }



