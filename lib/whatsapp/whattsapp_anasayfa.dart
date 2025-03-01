import 'package:flutter/material.dart';
import 'package:ornekler/whatsapp/renkler.dart';


class WhattsappAnasayfa extends StatefulWidget {
  const WhattsappAnasayfa({super.key});

  @override
  State<WhattsappAnasayfa> createState() => _WhattsappAnasayfaState();
}

class _WhattsappAnasayfaState extends State<WhattsappAnasayfa> {

  Map<String, String> saat = {
    "Arzu"   : "00:20",
    "Samet"  : "12:35",
    "Hacer"  : "15:11",
    "Şükran" : "21:04",
    "Osman"  : "22:19",
    "Hatice" : "09:05",
    "Ahmet"  : "02:31",
    "Adem"   : "05:14",
    "Emine"   : "16:25",
    "Büşra"   : "19:36",
  };

  Map<String, String> lastMessage = {
    "Arzu"   : "Ok mom",
    "Samet"  : "Ok dad",
    "Hacer"  : "Naaaapiyonnnn",
    "Şükran" : "Kuzum çalışın",
    "Osman"  : "Tırrek misin la",
    "Hatice" : "Asaf durmuyo",
    "Ahmet"  : "Bir gün bir sahabe",
    "Adem"   : "Hello",
    "Emine"   : "My name is Emine",
    "Büşra"   : "How are you?",
  };


  Map<String, Color> userColors = {
    "Arzu" : const Color(0xFF4e1559),
    "Samet" : const Color(0xFF003571),
    "Hacer" : const Color(0xDA0399F5),
    "Şükran" : const Color(0xFF4ED604),
    "Osman" : const Color(0xffff7600),
    "Hatice" : const Color(0xffff0000),
    "Ahmet" : const Color(0xFF00FFE6),
    "Adem"   :   const Color(0xFF370035),
    "Emine"   :  const Color(0xFF181935),
    "Büşra"   :  const Color(0xFFE6E600),
  };

  List<String> users = ["Arzu","Samet","Hacer","Şükran","Osman","Hatice","Ahmet","Adem","Emine","Büşra"];

  Widget _buildProfileIcon(String username){
    return CircleAvatar(
      radius: 40,
      backgroundColor: userColors[username],
      child: Icon(Icons.person,color: yaziRenk,size: 45,),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaPlanRenk,
       appBar: AppBar(
         title:  Text("WhatsApp",style: TextStyle(color: yaziRenk,fontWeight: FontWeight.bold,),),
       backgroundColor: arkaPlanRenk,
         actions: [
           IconButton(onPressed: (){}, icon:  Icon(Icons.camera_alt_outlined,color: yaziRenk,)),
           IconButton(onPressed: (){}, icon:  Icon(Icons.search_rounded,color: yaziRenk,)),
           IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert,color: yaziRenk,)),
         ],
         bottom: PreferredSize(
           preferredSize: const Size.fromHeight(1.0), // İnce bir çizgi eklemek için yükseklik 1
           child: Padding(
             padding: const EdgeInsets.only(right: 20.0),
             child: Container(
               color: yaziRenk, // İnce beyaz çizgi
               height: 0.0625,
             ),
           ),
         ),
       ),
      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (BuildContext context, int index){
          String username = users[index];
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10,),
                ListTile(
                  contentPadding: const EdgeInsets.all(1),
                  leading: _buildProfileIcon(username),
                  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(username,style:  TextStyle(fontSize: 16,color: yaziRenk,fontWeight: FontWeight.bold),),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(saat[username]!,style: const TextStyle(fontSize: 12,color: Colors.grey),),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(lastMessage[username]!,style: const TextStyle(fontSize: 14,color: Colors.grey),),
                        ],
                      )
                    ],),
                ),
              ],
            ),
          );
          }
      ),
      floatingActionButton: Container(
        height: 55,
          width: 55,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xFF25D366),),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.chat,color: Colors.black,))),
    );
  }
}
