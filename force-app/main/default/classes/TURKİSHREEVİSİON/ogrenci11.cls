public class ogrenci11 {
  
    public static integer ogrenciSayisi = 0;
    //public integer oSayisi = 0;

    public string firstName;
    public string lastName;
    private string schoolName = 'Dream School';
    public string className;
    public string language;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public Integer fenGrade;

    public ogrenci11() {
        ogrenciSayisi++;
        //oSayisi++;
        System.debug('yeni bir kayit yapildi. Ogrenci sayimiz : ' + ogrenciSayisi);
        //System.debug('statik olmayan ogrenci sayisi = ' + oSayisi);
    }

    public ogrenci11(string fName, string lName, integer ingNot){
        //this() parametresiz constructoru calistirir..
        this();
        this.firstName = fName;
        this.lastName = lName;
        this.ingGrade = ingNot;
    }

}