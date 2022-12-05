Map<String,Integer> marksObtainInMaths=new Map<String,Integer>{' 0111CE112 '=> 40,' 0111CE102 '=> 19, ' 0111CE100 '=> 33, ' 0111CE098 ' => 40 };

System.debug(marksObtainInMaths);

for (string  studentRollNumber: marksObtainInMaths.keySet()) {
         System.debug(studentRollNumber);    }

for (integer marksObtain: marksObtainInMaths.values()) {
    System.debug(marksObtain); }

Set<String> uniqueRollNumberSe=marksObtainInMaths.keySet();
System.debug('Uniq Roll Number Set ------> '+uniqueRollNumberSe);

Set<String> uniqueRolln=new Set<String>();
uniqueRolln.addAll(uniqueRollNumberSe);
System.debug('Uniq Roll Number Set ------> '+uniqueRolln); 

List<String> rollNumbers=new List<String>();
rollNumbers.addAll(uniqueRollNumberSe);
System.debug('Roll numbers-----> '+rollNumbers);

List<Integer> marksObtainList=marksObtainInMaths.values();
System.debug('marks obtain-----> '+marksObtainList);

List<Integer> marksObtainList1=new List<Integer>(); 
 marksObtainList1.addAll(marksObtainList);
 System.debug('marks obtain-----> '+marksObtainList1); 

for (Integer i = 0; i < marksObtainList.size(); i++) {
    integer eachMark=marksObtainList.get(i);
    if(eachMark<20){
        System.debug(rollNumbers.get(i) + ' is not qualified for next class');
    }else{
        System.debug(rollNumbers.get(i) + ' is  qualified for next class');
    }
}







