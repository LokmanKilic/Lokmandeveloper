ogrenci11 student1 = new ogrenci11();
student1.firstName = 'Marry';
student1.lastName = 'Doe';
student1.className = '6E';
student1.language = 'English';
student1.art = True;
student1.sport = False;
student1.ingGrade = 95;
student1.mathGrade = 92;
student1.fenGrade = 90;
System.debug(student1);

ogrenci11 student2 = new ogrenci11();
student2.firstName = 'John';
student2.lastName = 'Doe';
student2.className = '7E';
student2.language = 'Spanish';
student2.art = False;
student2.sport = True;
student2.ingGrade = 90;
student2.mathGrade = 82;
student2.fenGrade = 90;
System.debug(student2);

//class adi ile bir liste olusturmus oluyoruz..
System.debug('========class listesi=======');
List<ogrenci11> studentsList = new List<ogrenci11>();
studentsList.add(student1);
studentsList.add(student2);
System.debug('class listesi = ' + studentsList);

System.debug('====for each dongusu=====');
for (ogrenci11 eleman : studentsList) {
    System.debug(eleman.firstName);
    System.debug(eleman.lastName);
}


ogrenci11 s1 = new ogrenci11('Lisa', 'Fire', 95);
System.debug('s1 = ' + s1);

ogrenci11 s2 = new ogrenci11('Joseph', 'Fire', 85);
System.debug('s2 = ' + s2);

ogrenci11 s3 = new ogrenci11('David', 'Fire', 100);
System.debug('s3 = ' + s3);