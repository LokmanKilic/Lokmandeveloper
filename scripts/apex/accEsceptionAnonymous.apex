/* account ac=new account();
insert ac;
System.debug('Apex is SIMPLE'); */

/*  try {
     account ac=new account();
insert ac;
 } catch (Exception ex) {

    System.debug('Somthing went rong buddy');

 }
System.debug('Apex is SIMPLE'); */
/* try {
   
     account ac=new account();
insert ac;
 }catch (DMLException dex) {

    System.debug('DML went rong buddy');

 }Catch (Exception ex){

  System.debug('Somthing went rong buddy');
 }
System.debug('Apex is SIMPLE'); */

/* try {
    string s;
    s.toLowerCase();
     account ac=new account();
insert ac;
 }catch (DMLException dex) {

    System.debug('DML went rong buddy');

 }Catch (Exception ex){

  System.debug('Somthing went rong buddy');
 }
System.debug('Apex is SIMPLE');
 */
/* try {
    string s;
    s.toLowerCase();
     account ac=new account();
insert ac;
 }Catch (Exception ex){

  System.debug('Somthing went rong buddy');
 }
 catch (DMLException dex) {

    System.debug('DML went rong buddy');
 
 }
System.debug('Apex is SIMPLE');
 */

try {
    
     account ac=new account();
     insert ac;
 }Catch (Exception ex){
  System.debug('Somthing went rong buddy');
  System.debug('ex--> '+ex.getMessage());
  System.debug('ex line number--> '+ex.getLineNumber());
 } 
 
System.debug('Apex is SIMPLE');


