
Map<Integer,string> plkSehir=new Map<Integer,string >();
plkSehir.put(34,'İstanbul');
plkSehir.put(16,'Bursa');
plkSehir.put(35,'İzmir');
plkSehir.put(42,'Konya');
plkSehir.put(27,'Gaziantep');
system.debug(plkSehir);

 Boolean varMi34=plkSehir.containsKey(34);
 Boolean varMi61=plkSehir.containsKey(61);

 system.debug('Listede İstanbul var mı? '+varmı34+' ------ '+'Listede Trabzon var mı? '+ varmı61);

 System.debug( 'Listenin eleman sayısı = '+ plkSehir.size());

 plkSehir.remove(16); 
 system.debug ( 'Güncel listemiz: '+ plkSehir);

set<Integer>  setPlk= plkSehir.keySet();
system.debug('listedeki plaka numaraları = '+ setPlk);

List<string>    setShr=plkSehir.values();
system.debug('listedeki şehirler = '+ setShr);

for (Integer  plakalar: setPlk) {
   
   string sehirler=plkSehir.get(plakalar);
   System.debug(plakalar +' plakalı İlimiz : '+ sehirler);
    
}
    







