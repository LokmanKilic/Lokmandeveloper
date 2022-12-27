trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update) {
     
    
    
    
    
        if (Trigger.isAfter && Trigger.isInsert) {
             //call trigger handler to CREATE salesforce ticket.
             SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);

              // call future method

              System.debug('calling future method NOW');
              SalesforceProjectTriggerHandler.spUpdateDescription();
              System.debug('called future method. DONE');


        }
        if (Trigger.isBefore && trigger.isUpdate) {
            //call validation method here.
            SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
       
    }
    
    
    
//=====================================================================================

    









