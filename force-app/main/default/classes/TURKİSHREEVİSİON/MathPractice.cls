public class MathPractice {
    public decimal practiceOne(decimal uk, decimal kk) {

        decimal dikDa=(uk+kk)*2;
        return dikDa;

    }

    public decimal practiceTwo(decimal bO, decimal kI){

        decimal vucKiEn= kI/bO*bO;
        decimal ucsayi=vucKiEn.setScale(3);

        return ucsayi;


    }

    public decimal practiceThree(decimal uK, decimal kK, string hesap){
         
          decimal sonuc;        

          switch on hesap{
            when 'alan' {                
                sonuc=uK*kK;
                system.debug('dikdörtgenin alanı : '+ sonuc.round() );
            }

            when 'cevre' {

                sonuc=(uK+kK)*2;
                system.debug('dikdörtgenin çevresi : '+ sonuc.round() );
                
            }
            when else{
            system.debug('Tanımsız işlem. verileri gözden geçiriniz');
            }
          }
          return sonuc;

    }

    
    public string practiceFour(decimal K, decimal B){            
     
         decimal kEndex=K/(B*B);
         decimal kEndex1=kEndex.setScale(1);
         string result;
        //decimal kEndex=K.divide(B*B,1); 
        //string result=string.valueOf(kEndex1) ;    

        if (kEndex1>0 && kEndex1<=18.4) {

            result='Zayıf';
               
        } else if( kEndex1>18.4 && kEndex1 <=24.9) {
            result='Normal';
                     
        }else if (kEndex1>24.9 && kEndex1<=29.9){
            result='Kilolu';
           
        }else {
            result='Hatalı';

        }
        return result;         
    }

    public decimal deneme(decimal uK, decimal kK, string hesap){
        
        decimal sonuc;
        if (hesap=='alan') {
            sonuc=uK*kK;
            system.debug('dikdörtgenin alanı : '+ sonuc.round() );
            
        } else {            
            if (hesap=='cevre') {
                sonuc=(uK+kK)*2;
                system.debug('dikdörtgenin çevresi : '+ sonuc.round() );
            
        } else {
            system.debug('Tanımsız işlem. verileri gözden geçiriniz');
        } 
        


    }    
       return sonuc;

   
    }
 
 
 
    public integer practiceFive(integer x, integer y){

         integer toplam=0;

         if (X<y) {

            for (integer i=x; i<=y; i++){                
                toplam +=i;
            }
        }else if(x>y){                
                for (integer i=y; i<=x; i++){                
                toplam +=i;
                }
        } else {
                toplam= x+y;
        }              
         
        return toplam;
    }
    

}
    







