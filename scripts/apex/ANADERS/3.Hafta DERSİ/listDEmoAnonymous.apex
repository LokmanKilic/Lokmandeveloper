
ListDemo.allCats();



string valueAt2=ListDemo.candidatesList(2);
system.debug(valueAt2);

string valueAt5=ListDemo.candidatesList(5);
system.debug(valueAt5);

string valueAt0=ListDemo.candidatesList(0);
system.debug(valueAt0);

ListDemo.randomIntegerList();


list<string>  listStr=new  List<String>();

if (listStr.isEmpty()) {
    system.debug('List is Emty.Okay');
    
}

 List<Integer> listInteger= new   List<Integer> ();
     listInteger.add(10);
     listInteger.add(15);
     listInteger.add(21);
     listInteger.add(12);
     listInteger.add(8);
 system.debug('befor sort-> '+listInteger);
 listInteger.sort();
 system.debug('after sort-> '+listInteger);


