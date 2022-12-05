public class PrimitiveDataTypeDemo2 {
    public void printNewDate() {

        system.debug('Creat new date instance');

        Date newDate= Date.newInstance(1977,05,25);
        system.debug('New Date is:'+newDate);
        
        Date newDate2= Date.newInstance(2022,11,01);
        system.debug('New Date is:'+newDate2);
       
        Date  todayDate= Date.today( );
        system.debug('Today is:'+todayDate);
    }
        
    public void prinTime(){

          Time  myTime= time.newInstance(18,3,6,55);
        system.debug('My time is:'+ myTime);

        Time meTime = time.newInstance(16, 18, 45, 15);
        system.debug('meTime is ' + meTime);

    }    
        
    public void printNewDateTime(){
        
        Date  newDate = date.today();
        Time  newTime = time.newInstance(1,1,5,55);

        Datetime dt1= Datetime.newInstance(newDate,newTime);
        system.debug('dt1 is ' + dt1);
       
        Datetime dt2= Datetime.newInstance(2001,5,8);
        system.debug('dt12is ' + dt2);


    }
        



    
}
