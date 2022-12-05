ParametreliMetotlar pm1 = new ParametreliMetotlar();
string metin = 'Salesforce Developer olma yolunda ilerliyorum..';
integer uzunluk = pm1.uzunluk(metin);
System.debug(metin + ' cumlesinin karakter sayisi = ' + uzunluk);

ParametreliMetotlar pm2 = new ParametreliMetotlar();
System.debug(pm2.rakamSayisi(3333));
integer rs = pm2.rakamSayisi(4444444);
System.debug('sayinin rakam adedi = '+ rs);

ParametreliMetotlar pm3 = new ParametreliMetotlar();
integer sonuc1 = pm3.sum(11, 22);
System.debug('toplama isleminin sonucu = ' + sonuc1);

integer sonuc2 = pm3.cikarma(44, 33);
System.debug('cikarma isleminin sonucu = ' + sonuc2);

decimal bolme = sonuc1/sonuc2;
System.debug('iki degerin bolme sonucu = ' + bolme);

ParametreliMetotlar pm4 = new ParametreliMetotlar();
pm4.kitapOdemesi('Sefiller', 5, 39);