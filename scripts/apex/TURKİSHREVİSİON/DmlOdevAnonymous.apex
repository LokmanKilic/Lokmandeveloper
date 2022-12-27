DmlOdev.addOPP149();
DmlOdev.DmlInsert();
DmlOdev.DmlUpdate();
DmlOdev.deleteAccount();
DmlOdev.deleteOpp();




//Apex Anonim kısmını kullanarak verilen bilgilerle bir tane Account insert edin
account yeniAcc=new account();
yeniAcc.Name='Summer Fest LLC';
yeniAcc.type='Technology Partner';
yeniAcc.rating='Hot';
yeniAcc.annualRevenue=200000000;
account acc1=[select name,id from account where name='University of Arizona'];
yeniAcc.Parentid=acc1.id;
insert yeniAcc;

// //Önceki adımda oluşturduğumuz Accounta bağlı ve verilen bilgilerle 3 tane Contact
// create edin.
list<contact> threeAcc=new list<contact>();
for(integer i=1; i<=3; i++){
  contact yeniCont1=new contact();
 yeniCont1.LastName='Event Planner  '+i;
 yeniCont1.phone='+1 2345 7896';
 account acc2=[select name,id from account where name='Summer Fest LLC' limit 1];
 yeniCont1.AccountID=acc2.Id;
 yeniCont1.leadsource='Web';
 threeAcc.add(yeniCont1);
}
insert threeAcc;



// list<contact> cont=new list<contact>();
// contact yeniCont1=new contact();
// yeniCont1.LastName='Event Planner 1';
// yeniCont1.phone='+1 2345 7896';
// account acc2=[select name,id from account where name='Summer Fest LLC' limit 1];
// yeniCont1.AccountID=acc2.Id;
// yeniCont1.leadsource='Web';
// cont.add(yeniCont1);

// contact yeniCont2=new contact();
// yeniCont2.LastName='Event Planner 2';
// yeniCont2.phone='+1 2345 7896';
// account acc3=[select name,id from account where name='Summer Fest LLC' limit 1];
// yeniCont2.AccountID=acc3.Id;
// yeniCont2.leadsource='Web';
// cont.add(yeniCont2);

// contact yeniCont3=new contact();
// yeniCont3.LastName='Event Planner 3';
// yeniCont3.phone='+1 2345 7896';
// account acc4=[select name,id from account where name='Summer Fest LLC' limit 1];
// yeniCont3.AccountID=acc4.Id;
// yeniCont3.leadsource='Web';
// cont.add(yeniCont3);
// insert cont;