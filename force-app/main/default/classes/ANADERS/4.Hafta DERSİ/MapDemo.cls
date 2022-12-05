public class MapDemo {
    
public static string retrieveMonth(integer m){
     
     string monthName='';
     Map<Integer, String> mapMonth= new Map<Integer, String>();

     mapMonth.put(1,'Janruary');
     mapMonth.put(2,'Fabruary');
     mapMonth.put(3,'March');
     mapMonth.put(4,'April');
     mapMonth.put(5,'May');
     mapMonth.put(6,'June');
     mapMonth.put(7,'July');
     mapMonth.put(8,'August');
     mapMonth.put(9,'September');
     mapMonth.put(10,'Oktober');
     mapMonth.put(11,'November');
     mapMonth.put(12,'December');
Boolean keyExists=mapMonth.containsKey(m);
if (keyExists){

    monthName=mapMonth.get(m);
}else {

    monthName ='no suuch month exists.Please behave !';    

}    
return monthName;
       
}
}
