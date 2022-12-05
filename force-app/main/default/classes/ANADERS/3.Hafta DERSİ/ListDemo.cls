public class ListDemo {
    public static string candidatesList(integer i) {

        List<String> listCandidates= new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('list of candidates '+listCandidates  ); 
       // string returnValue = listCandidates[i];
       string returnValue ='';// 5 index didint found

       //check size of list
        integer sizeOflist= listCandidates.size();
        if (i>=0&&i<sizeOflist) {
            returnValue=listCandidates[i];
            
        } else {

            returnValue=' No values found. come on';            
        }

        return returnValue;      

    }


    public static void randomIntegerList(){

     List<Integer> listInteger= new   List<Integer> ();
     listInteger.add(10);
     listInteger.add(15);
     listInteger.add(21);
     listInteger.add(15);
     listInteger.add(15);

     integer index3Value=listInteger.get(3);
     integer index3Value2=listInteger[3];
     system.debug('index at value 3--> '+index3Value);   
     system.debug('index at value 3--> '+index3Value2);   

     system.debug('list of randum integer  '+ listInteger  );

    }
    public static void allCats(){
        List<cat> listCats = new list<cat>();
        //how to add cats in this list?
        Cat sfCat2 = new Cat('Leo', 'Orange');
        Cat sfCat3 = new Cat('Luna', 'Brown');
        Cat batch11Cat = new Cat('fluffykins', 'white');
        listCats.add(sfCat2);    
        listCats.add(sfCat3);    
        listCats.add(batch11Cat);//we add 'instances' of cat class.
        listCats.add(sfCat2);
        system.debug('cat list ' + listCats);
   }





}
