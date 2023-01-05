Map<String,country_code__c> allcountryCodes=country_code__c.getAll();
System.debug('all country codes --->'+ allcountryCodes);
for (string eachCountry : allcountryCodes.keySet()) {

    System.debug('Country is '+eachCountry+ ' its code is '+ allcountryCodes.get(eachCountry).code__c);
    
}
