import 'package:block_pattern_kullanimi/data/repo/matematikrepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Cubit arayüze int veri gönderecekse yada yönettiğimiz veri int ise Cubit<int> olarak yazılır
class AnasayfaCubit extends Cubit<int>{
  //Constructer istediği için yaptık. Varsayılan Değere 0 atadık
  AnasayfaCubit():super(0);

  var mrepo=MatematikRepo();

  void ToplamaYap(String alinansayi1,String alinansayi2){
    //Emir verme ve Yaptırma Fonksiyonu:SetState gibi
    emit(mrepo.ToplamaYap(alinansayi1, alinansayi2));
  }
  void CarpmaYap(String alinansayi1,String alinansayi2){
    emit(mrepo.CarpmaYap(alinansayi1, alinansayi2));
  }
}