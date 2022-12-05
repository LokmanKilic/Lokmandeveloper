public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){

        system.debug('print data types');
        string batchName='Batch 11';
        integer totalCandidates=80;
        boolean isAdminCompleted=true;
        system.debug('batch name is '+batchName);
        system.debug('Total Candidates are '+totalCandidates);
        system.debug('is admin completed ? '+isAdminCompleted);

        string batchDescription= batchName + 'is the best';
        system.debug(batchDescription);

        Decimal dacValue=36.98;
        system.debug('Decimal value is '+ dacValue);
        Long l=4568754487L;
        system.debug('Long value is '+ l);
         


        }
public void printBasicDataType2(){
    Object ob1 ='assignin string to object allowed?';
    Object ob2 =5000;
    Object ob3=false;
    ID accoundId='0018d000000TeFrAAL';

    system.debug('ID -> '+ accoundId);


}
    }
