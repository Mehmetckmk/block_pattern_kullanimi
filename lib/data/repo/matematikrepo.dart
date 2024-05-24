class MatematikRepo{
  int ToplamaYap(String alinansayi1,String alinansayi2){
    int sayi1=int.parse(alinansayi1);
    int sayi2=int.parse(alinansayi2);
    int toplam =sayi1+sayi2;
    return toplam;
  }
  int CarpmaYap(String alinansayi1,String alinansayi2){
    int sayi1=int.parse(alinansayi1);
    int sayi2=int.parse(alinansayi2);
    int carpim =sayi1*sayi2;
    return carpim;
  }
}