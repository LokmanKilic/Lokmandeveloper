MathPractice Da= new MathPractice();

decimal cevDik= da.practiceOne(12.58, 15.28);
system.debug( 'Dikdörtgenin çevresi= '+cevDik);
                                                
                                                
MathPractice da1= new MathPractice();
decimal kiloEndeksi=da1.practiceTwo(1.78,85.5);
system.debug('Kilo endeksiniz = '+kiloEndeksi+'. Üzülmeyin iyisiniz:).Fakat biraz daha az yiğiniz!');

MathPractice da2= new MathPractice();
string year = '2008';
string month = '10';
string day = '5';
string hour = '12';
string minute = '20';
string second = '20';
string stringDate = year + '-' + month
 + '-' + day + ' ' + hour + ':' + 
minute + ':' + second;

Date myDate = date.valueOf(stringDate);

system.debug(myDate);


MathPractice hsp= new MathPractice();
hsp.practiceThree(5.25, 10.65, 'alan');
hsp.practiceThree(5.25, 10.65,'cevre');
hsp.practiceThree(5.25, 10.65,'hacim');


MathPractice hsp1= new MathPractice();
hsp1.practiceThree(5.25, 10.65, 'alan');
hsp1.practiceThree(5.25, 10.65,'cevre');
hsp1.practiceThree(5.25, 10.65,'hacim');



MathPractice kE=new MathPractice();
system.debug(kE.practiceFour(35,1.72));
system.debug(kE.practiceFour(70,1.75));
system.debug(kE.practiceFour(82,1.75));
system.debug(kE.practiceFour(120,1.75));



MathPractice yen= new MathPractice();

system.debug(yen.practiceFive(3, 8));
system.debug(yen.practiceFive(8, 3));
system.debug(yen.practiceFive(9, 9));
system.debug(yen.practiceFive(6, 10));
system.debug(yen.practiceFive(10, 6));
system.debug(yen.practiceFive(-1, 8));
