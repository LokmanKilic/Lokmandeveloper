public class StringDemoClass {

    public void stringMethod1(){
         String sessionDescription = 'learning string methods in apex language.';
         system.debug (sessionDescription);
         integer lengthOfstr=sessionDescription.length();
         system.debug('lenght of session descripsion is'+lengthOfstr);

         string capsSessionDescription=sessionDescription.toUpperCase();

         system.debug('in CAPS->'+capsSessionDescription);
         
         boolean apexConteains=sessionDescription.contains('apex');
         System.debug('contains apex ??????'+apexConteains);

         boolean sfConteains=sessionDescription.contains('salesforce');
         System.debug('contains apex ??????'+sfConteains);

         boolean apexConteains1=sessionDescription.containsIgnoreCase('Apex');
         System.debug('contains ignore case Apex ??????'+apexConteains1);

         

 }
}