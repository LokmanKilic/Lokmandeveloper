public class Calculator {
    public void welcomeMessage(){
       system.debug('Welcome to apex calc');

    }

    public void printNewMessage(string msg){

        system.debug(msg);
    }

    public string printAndReturnMessage(string msg){
        string returnString=msg+'..Ok Cool';
        return returnString;

    }

    

    public integer add(integer x,integer y, integer z){
        integer sum= x+y+z;
        return sum;
   
       }

     public boolean leapYearCheck(date dt){

        integer year=dt.year();
        boolean lp=date.isLeapYear(year);
        return lp;
     }  
     
     
    }
