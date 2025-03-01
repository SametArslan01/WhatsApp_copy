import 'package:flutter/material.dart';
import 'package:ornekler/whatsapp/renkler.dart';

class TopluluklarSafyasi extends StatefulWidget {
  const TopluluklarSafyasi({super.key});

  @override
  State<TopluluklarSafyasi> createState() => _TopluluklarSafyasiState();
}

class _TopluluklarSafyasiState extends State<TopluluklarSafyasi> {


  Map<String, String> saat = {
    "Arzu"   : "00:20",
    "Samet"  : "12:35",
    "Hacer"  : "15:11",
  };

  Map<String, String> lastMessage = {
    "Arzu"   : "Ok mom",
    "Samet"  : "Ok dad",
    "Hacer"  : "Naaaapiyonnnn",
  };


  Map<String, Color> userColors = {
    "Arzu" : const Color(0xFF4e1559),
    "Samet" : const Color(0xFF003571),
    "Hacer" : const Color(0xDA0399F5),
  };

  List<String> users = ["Arzu","Samet","Hacer",];

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
      appBar: AppBar(title: Text("Topluluklar",style: TextStyle(color: yaziRenk),),backgroundColor: arkaPlanRenk,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: yaziRenk,))
      ],
        bottom: PreferredSize(preferredSize: const Size.fromHeight(1.0), child: Container(color: yaziRenk,height: 0.0625,)),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(children: [
                          Stack(
                          clipBehavior: Clip.none, // Taşma durumlarını engelleme
                            children: [
                // Ana IconButton
                Container(width: 50,height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFF706F6F),),
                  child: IconButton(
                    iconSize: 35, // Butonun boyutu
                    icon: const Icon(Icons.diversity_3, color: Colors.white70),
                    onPressed: () {},
                  ),
                ),
                // Sağ alt köşedeki küçük + butonu
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 24, // Küçük buton boyutu
                    height: 24,
                    decoration: BoxDecoration(
                      color: butonRenk,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 16, // Küçük ikon boyutu
                    ),
                  ),
                ),
                            ],
                          ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text("Yeni topluluk",style: TextStyle(color: yaziRenk,fontSize: 18),),
                  )
                ],),
              ),
             Container(color: Colors.black,height: 10),
              ListView.builder(
                shrinkWrap: true, // Ekrandaki mevcut alan kadar sıkıştır
                physics: const NeverScrollableScrollPhysics(), // Ana sayfa içinde kaymayı engelle
                itemCount: users.length,
                itemBuilder: (BuildContext context,int index){
                  String username = users[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.all(5),
                    leading: _buildProfileIcon(username),
                    title: Column(
                      children: [
                        Row(
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text(username,style:  TextStyle(fontSize: 16,color: yaziRenk,fontWeight: FontWeight.bold),),
                              Text(lastMessage[username]!,style:  TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                            ],),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(saat[username]!,style: const TextStyle(fontSize: 12,color: Colors.grey),),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },),
              InkWell(
                onTap: (){},
                splashColor: Colors.white.withAlpha(30), // Tıklama sırasında oluşan renk efekti
                highlightColor: Colors.white.withAlpha(50), // Tıklama sırasında oluşan vurgulama rengi
                child: const SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 35.0,),
                        child: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.0,),
                        child: Text("Tümünü gör",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 10,color: Colors.black,),
              ListView.builder(
                shrinkWrap: true, // Ekrandaki mevcut alan kadar sıkıştır
                physics: const NeverScrollableScrollPhysics(), // Ana sayfa içinde kaymayı engelle
                itemCount: users.length,
                itemBuilder: (BuildContext context,int index){
                  String username = users[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.all(5),
                    leading: _buildProfileIcon(username),
                    title: Column(
                      children: [
                        Row(
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(username,style:  TextStyle(fontSize: 16,color: yaziRenk,fontWeight: FontWeight.bold),),
                                Text(lastMessage[username]!,style:  TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                              ],),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(saat[username]!,style: const TextStyle(fontSize: 12,color: Colors.grey),),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },),
              InkWell(
                onTap: (){},
                splashColor: Colors.white.withAlpha(30), // Tıklama sırasında oluşan renk efekti
                highlightColor: Colors.white.withAlpha(50), // Tıklama sırasında oluşan vurgulama rengi
                child: const SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 35.0,),
                        child: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.0,),
                        child: Text("Tümünü gör",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 10,color: Colors.black,),
              ListView.builder(
                shrinkWrap: true, // Ekrandaki mevcut alan kadar sıkıştır
                physics: const NeverScrollableScrollPhysics(), // Ana sayfa içinde kaymayı engelle
                itemCount: users.length,
                itemBuilder: (BuildContext context,int index){
                  String username = users[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.all(5),
                    leading: _buildProfileIcon(username),
                    title: Column(
                      children: [
                        Row(
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(username,style:  TextStyle(fontSize: 16,color: yaziRenk,fontWeight: FontWeight.bold),),
                                Text(lastMessage[username]!,style:  TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                              ],),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(saat[username]!,style: const TextStyle(fontSize: 12,color: Colors.grey),),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },),
              InkWell(
                onTap: (){},
                splashColor: Colors.white.withAlpha(30), // Tıklama sırasında oluşan renk efekti
                highlightColor: Colors.white.withAlpha(50), // Tıklama sırasında oluşan vurgulama rengi
                child: const SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 35.0,),
                        child: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.0,),
                        child: Text("Tümünü gör",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 10,color: Colors.black,),
            ],
          ),
      ),
    );
  }
}
