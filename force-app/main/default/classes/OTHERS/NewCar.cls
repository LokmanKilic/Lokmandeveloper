public class NewCar{
    
    integer currentSpeed=0;
    string carType='';
    string carName='';        
        
    public string startCar(string carType, string carName) {
       string carPropert=carName+' '+ carType;
       system.debug( 'My Car is '+carPropert);
       return carPropert;
       }
    public integer accelerate(integer x){
       currentSpeed += x;       
       system.debug('Speed is '+ currentSpeed);
       return currentSpeed;
    } 
    public integer brake(integer y){
      currentSpeed -= y;       
      system.debug('Speed is ' + currentSpeed);
      return currentSpeed;
   } 

    public integer stopCar() {
       currentSpeed=0;       
       system.debug( 'Speed is '+currentSpeed);
       return currentSpeed;
   }
   public string checkSpeed(){
       string mode='';
      if(currentSpeed > 0 && currentSpeed <= 30 ){     
         mode='City Mode';
         System.debug('City Mode');

        }else if (currentSpeed > 30 && currentSpeed <= 60 ){
        mode = 'Economy Mode';
         System.debug(mode);
        }else if (currentSpeed >  60 ){
         mode = 'Sport Mode';
         System.debug(mode);  
        }
        return mode;
   }
}