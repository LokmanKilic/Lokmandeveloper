
//created a class.
public class Car {
    //public class variable
    public string carColor = '';
    public string carName = '';

    //if we don't have any access modifier, by default it is PRIVATE
    integer maxSpeed = 150; 

    //crated a method
    public void switchOn(){
        //THIS IS METHOD BODY.
        system.debug('starting the car');
    }

    public void drive(){
        system.debug('driving ' + carName + ' of color ' + carColor);
    } 
}

//SAVE CLASS.
//right click. > sfdx deploy.

//class, we deploy.
//anonymous apex, we execute.