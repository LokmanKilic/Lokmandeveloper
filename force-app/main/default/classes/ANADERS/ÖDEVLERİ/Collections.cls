
public  class Collections {
    public static String listAssignment(integer i) {
        List<String>  lstMonth = new List<String>();
        lstMonth.add('January');
        lstMonth.add('Fabruary');
        lstMonth.add('Marc');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('July');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('November');
        lstMonth.add('December');
        System.debug('List of Month'+ lstMonth);
        String returnValue ;
        Integer sizeOfList = lstMonth.size(); 
         if(i >= 0 && i < sizeOfList){
            returnValue = lstMonth.get(i);
         } else {
             returnValue = 'No Months found.';
         }
 
        return returnValue;
    }
}