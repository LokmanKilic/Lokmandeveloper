public class MyCity {
    /*public void cityInformation() {

        string unForgettenCity='İstanbul';
        string unRorgettableThing='Bosphorus';
        string myDream= unForgettenCity +' and '+unRorgettableThing;
        system.debug(  myDream+','+'two places in Istanbul that I can not forget');



    }*/

    public void stringMethod(){
    
        string  clause='I am a Salesforce Developer';
        boolean result= clause.contains('force');
        System.debug('Does the sentence contain the word "force"?   result:'+result);

        integer character=clause.length();
        System.debug('Number of characters in the sentence is'+character);

        string upccase=clause.toUpperCase();
        system.debug(upccase);
    }

    public void dateMethod (){
        date today=date.today();
        system.debug(today);

        datetime today2=Datetime.now();
        system.debug(today2);

        datetime day50=datetime.newInstance(2022,11,13);
        datetime newDaytime=day50.addHours(50);
        system.debug(newDaytime);

    }

    public void  cityInformation(){

        date cumhuriyet=date.newInstance(1923,10,29);
        system.debug('Cumhuriyetimiz '+cumhuriyet+' tarihinde kurulmuştur');

        Time gds =Time.newInstance( 07, 15, 00,00);      
        system.debug('Bulunduğum lokasyondaki Gündoğumu saati: '+gds);

        
        date bugun=date.today();        
         date fark36=bugun.addMonths(-36);
        system.debug('Bugününün tarinden 6 ay önceki tarih:' +fark36);

    }



}
