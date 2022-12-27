
DML2_Assn.insert_dml();
DML2_Assn.updating_dml();

DML2_Assn.createBulkContacts();

DML2_Assn.searchForContacts('Johansson');


Set<string>  uniqueNameSet=new Set<String>{'Tom','Jerry'};
integer siezeSet=uniqueNameSet.size();
System.debug('Set size : '+ siezeSet);

uniqueNameSet.add('Lokman');
uniqueNameSet.add('Salih ');
uniqueNameSet.add('Hasan ');
System.debug(uniqueNameSet);

Boolean cheack=uniqueNameSet.contains('Lokman');
System.debug('is there my name in the set?' +cheack);

Boolean checkFull = uniqueNameSet.isEmpty();
System.debug('Is the set emty ?'  +checkFull);

uniqueNameSet.clear();

Boolean checkfull1= uniqueNameSet.isEmpty();

System.debug(' Is the last set is emty ?  '+checkfull1);

Map<String,Integer> StudentRank =new Map<String,Integer>{'Mehmet'=>7,'Rasim'=>6};

    StudentRank.put('Tom',2);
    StudentRank.put('Jerry',3);
    StudentRank.put('Hans',4);
    StudentRank.put('Mel',1);
    StudentRank.put('Sinatra',5);

    Integer cnt=0;

    for (string studentname: StudentRank.keySet()) {
        cnt++;

        System.debug( cnt+'.'+ 'student name ----> '+studentname+ '----> '+ StudentRank.get(studentname));
        
    }




