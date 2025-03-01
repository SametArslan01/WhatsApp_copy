import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/renkler.dart';
import 'package:whatsapp/whatsapp/topluluklar_safyasi.dart';
import 'package:whatsapp/whatsapp/whattsapp_anasayfa.dart';
import 'aramalar_sayfasi.dart';
import 'guncellemeler_sayfasi.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int secilenSayfa = 0;

  var sayfalar =[const WhattsappAnasayfa(),const GuncellemelerSayfasi(),const TopluluklarSafyasi(),const AramalarSayfasi()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[secilenSayfa],
      bottomNavigationBar: Container(
        height: 75,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat_outlined,color: Colors.white,),label: "Sohbetler",),
            BottomNavigationBarItem(icon: Icon(Icons.data_saver_off,color: Colors.white,),label: "Güncellemeler"),
            BottomNavigationBarItem(icon: Icon(Icons.diversity_3,color: Colors.white,),label: "Topluluklar",),
            BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.white,),label: "Aramalar"),
          ],
          unselectedFontSize: 14,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green, // **Seçili ikon ve yazının rengi**
          unselectedItemColor: Colors.white60, // **Seçilmemiş ikon ve yazının rengi**
          backgroundColor: arkaPlanRenk,
          currentIndex: secilenSayfa,
          onTap: (indeks){
            setState(() {
              secilenSayfa = indeks;
            });
          },
        ),
      ),
    );
  }
}
