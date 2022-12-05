// map key-value                            key-value
Map<String,String> mapCntCurrency=new Map<String,String>();

mapCntCurrency.put('USA', 'Dolar');
mapCntCurrency.put('Japan',' Yen');
mapCntCurrency.put('Spain',' Euro');
mapCntCurrency.put('Netherland','Euro');
mapCntCurrency.put('India','Rupees');
mapCntCurrency.put('India',' Rupee');// overWright
mapCntCurrency.put('ElSalvador','Bitcoin');
mapCntCurrency.put('Turkiye','Lira');

System.debug(mapCntCurrency);


string IndiaCurrency= mapCntCurrency.get('India');
string country='Turkiye';
string countryCurrency= mapCntCurrency.get(country);
system.debug('India currency is ' + IndiaCurrency);
system.debug('Turkiye currency is ' + countryCurrency);

//get all countries (keys)
set<string> countrySet = mapCntCurrency.keySet();
system.debug('country set --> ' + countrySet);

List<string> currencyList = mapCntCurrency.values();
system.debug('currency list --> ' + currencyList);

Set<String> countries = mapCntCurrency.keySet();
for(string eachCountry: countries){
    system.debug('* each country is ' + eachCountry);
    //can we get currency (or value ) from country?
    //How?
    //Fetch currency using .get(key) method
    string eachCurrency = mapCntCurrency.get(eachCountry);
    system.debug('* each currency is ' + eachCurrency);
    system.debug('**** Country is ' + eachCountry + ', its Currency is ' + eachCurrency); 
}


