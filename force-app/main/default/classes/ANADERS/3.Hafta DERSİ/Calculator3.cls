public class Calculator3 {
    //method name = add
    //parameter = list<integer>
    //return type = integer (return addition of all the elements in the list)
    public static integer add(List<integer> listInt) {
        //first take temp var
        integer returnInt = 0;
        for (integer eachInt : listInt) {
            system.debug('eachInt => ' + eachInt);
            returnInt += eachInt;
            system.debug('returnInt => ' + returnInt);
        }
        return returnInt;
    }

    /*public static string lok(List<String> lokList){
        string reaturnik='Salih';
        for(string lokMan: lokList){
            string lok1=lokMan.toUpperCase();
            system.debug( 'ilk liste: '+lok1);
            reaturnik = + lok1;

            //system.debug( 'ilk liste: '+ lokMan+ reaturnik);


        }
        
        return reaturnik;
    }*/
}