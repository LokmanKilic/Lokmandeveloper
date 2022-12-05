public class PrimitiveDataTypeDemo3 {
    //we can have same method name in different classes.
    public void printNewDateTime(){
        //3. new date time using year, month, day, hour, minute, second
        Datetime dt3 = Datetime.newInstance(2021, 5, 15, 9, 5, 40);
        system.debug('dt3 is ' + dt3);

        Datetime dt41 = datetime.newInstance(300000);
        system.debug('dt4_1 is  ' + dt41);

        Long longTime = 1487954621154L;//milliseconds from 1970 Jan 1 000000.
        datetime dt4 = datetime.newInstance(longtime);
        system.debug('dt4 is ' + dt4);

        datetime dt6 = datetime.now();
        system.debug('dt 6 current datetime is ' + dt6);
        
        Datetime dt5=Datetime.newInstanceGmt(1998,8,4,5,1,4);
        system.debug(dt5);



    }
}
