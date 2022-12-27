Calculator c1=new Calculator();
c1.welcomeMessage();

string message='Print this Message';
c1.printNewMessage(message);
c1.printNewMessage('now print this.');
//integer msg=15;
//c1.printNewMessage(msg);
Calculator c2= new Calculator();
string  returnc2= c2.printAndReturnMessage('print this asap');
system.debug(returnc2);

//Calculator calc= new Calculator();
//ineteger addInteger=
integer c2Sum1=c2.add(10,5);
system.debug('c2sum1 is '+c2Sum1);

integer c2Sum33=c2.add(10,5,53);
system.debug('c2sum3 is '+c2Sum33);

integer c2sum2= c2.add(45,55);
system.debug('c2sum2 is '+c2sum2);

integer x=45;
integer y=56;
integer c2sum3=c2.add(x,y);
system.debug('c2sum3 is '+c2Sum3);

Calculator c3= new Calculator();
date date1=date.newInstance(2020,6,22);
boolean date1LP=c3.leapYearCheck(date1);
system.debug('date 1 is leap year?'+date1LP);

