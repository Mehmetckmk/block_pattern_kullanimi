import 'package:block_pattern_kullanimi/ui/cubit/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfsayi1=TextEditingController();
  var tfsayi2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Block Kullanımı",style: TextStyle(fontSize: 30,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<AnasayfaCubit,int>(
              builder: (context,sonuc){
                return Text(sonuc.toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),);
              },
            ),
            SizedBox(width: 380,
                child: TextField(controller: tfsayi1,decoration: const InputDecoration(hintText: "SAYI 1"),keyboardType: TextInputType.number,)),
            SizedBox(width: 380,
                child: TextField(controller: tfsayi2,decoration: const InputDecoration(hintText: "SAYI 2"),keyboardType: TextInputType.number,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                context.read<AnasayfaCubit>().ToplamaYap(tfsayi1.text, tfsayi2.text);
                tfsayi1.text="";
                tfsayi2.text="";
              }, child: Text("Toplama",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),),
              ElevatedButton(onPressed: (){
                context.read<AnasayfaCubit>().CarpmaYap(tfsayi1.text, tfsayi2.text);
                tfsayi1.text="";
                tfsayi2.text="";
              }, child: Text("Çarpma",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),),
            ],
          )
          ],
        ),
      ),
    );
  }
}
