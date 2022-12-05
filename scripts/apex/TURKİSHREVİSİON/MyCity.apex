MyCity  Cty= new MyCity();
Cty.cityInformation();

MyCity cty2= new MyCity();
cty2.stringMethod();

MyCity cty3= new MyCity();
cty3.dateMethod();


MyCity  Ct4= new MyCity();

Date myBrtYear=date.newInstance(1977,05,25);
System.debug('Doğum tarihim '+myBrtYear+'dir');
integer dY=1977;
integer dA=5;
integer dG=25;
integer sum=dY+dA+dG;
system.debug('Doğum günüme ait rakam ve sayıların  toplamı='+dG+' + '+dA+' + '+dY+'='+sum);

MyCity  Ct5= new MyCity();

date mrDt = date.newInstance(1867, 11, 7);
System.debug(' Marie Curie nin doğum tarihi '+ mrDt);
date bugun = date.today();
System.debug('Bugünün tarihi '+ bugun);
integer gunFark = mrDt.daysBetween(bugun);
System.debug( 'İki tarih arasındaki  gün farkı: ' + gunFark+' gün');
integer ayFark = mrDt.monthsBetween(bugun);
System.debug( 'İki tarih arasındaki ay farkı: ' + ayFark +'ay');
integer  seneFark = gunFark /365;
System.debug( 'İki tarih arasındaki yıllık fark ' + seneFark+' yıl');

Boolean art=date.isLeapyear(1867);
system.debug('M.Cruie doğum yılı artık yılmıdır? : '+art);

