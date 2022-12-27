public class ContactTriggerHandler {

    public static void cntDescription(List<Contact> cntTriggerNew, List<Contact> cntTriggerOld,
                                            Map<id, Contact> cntTriggerNewMap, Map<id, Contact> cntTriggerOldMap) {

             
                    
            for (contact eachcont : cntTriggerNew) {
                id cntid = eachcont.id;
               
                
                if (eachcont.lastname != cntTriggerOldMap.get(cntid).lastName) {
                eachcont.description = 'lastName değiştirildi --->' + cntTriggerOldMap.get(cntid).lastName +' ------> '+ eachcont.lastname +' olarak değiştirildi';            
                  }
                                                
                                       
               
    }
    
    
    
    /* 
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
             Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
 
                 //validation
                 for (contact eachContact : conTriggerNew) {
                     Contact oldContact = conTriggerOldMap.get(eachContact.id);
                     if (oldContact.LeadSource == 'Partner Referral') {
                         eachContact.addError('Cannot update Partner Referral contact');
                     }

                 }
    }



    public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

         //validation
             for (contact eachContact : conTriggerNew) {
                Contact oldContact = conTriggerOldMap.get(eachContact.id);
                 if (eachContact.LeadSource != oldContact.leadsource) {
                    eachContact.leadsource.addError('Cannot update lead sporce');
                   }

}

    } */
}
}