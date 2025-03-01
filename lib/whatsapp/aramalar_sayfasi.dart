import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/renkler.dart';


class AramalarSayfasi extends StatefulWidget {
  const AramalarSayfasi({super.key});

  @override
  State<AramalarSayfasi> createState() => _AramalarSayfasiState();
}

class _AramalarSayfasiState extends State<AramalarSayfasi> {

  Map<String, IconData> cevap = {
    "Arzu": Icons.north_east,
    "Samet": Icons.south_west,
    "Hacer": Icons.south_west,
    "Mert": Icons.north_east,
    "Zeynep": Icons.south_west,
    "Ali": Icons.north_east,
    "Elif": Icons.south_west,
    "Berk": Icons.north_east,
    "Ece": Icons.south_west,
    "Can": Icons.north_east,
    "Ayşe": Icons.south_west,
    "Emre": Icons.north_east,
    "Deniz": Icons.south_west,
    "Burak": Icons.north_east,
    "Selin": Icons.south_west,
  };

  Map<String, Color> cevapRenk = {
    "Arzu": Colors.red,
    "Samet": Colors.green,
    "Hacer": Colors.green,
    "Mert": Colors.red,
    "Zeynep": Colors.green,
    "Ali": Colors.red,
    "Elif": Colors.green,
    "Berk": Colors.green,
    "Ece": Colors.red,
    "Can": Colors.green,
    "Ayşe": Colors.red,
    "Emre": Colors.red,
    "Deniz": Colors.red,
    "Burak": Colors.green,
    "Selin": Colors.red,
  };

  Map<String, IconData> arama = {
    "Arzu": Icons.call,
    "Samet": Icons.call,
    "Hacer": Icons.video_camera_back,
    "Mert": Icons.call,
    "Zeynep": Icons.video_camera_back,
    "Ali": Icons.call,
    "Elif": Icons.video_camera_back,
    "Berk": Icons.call,
    "Ece": Icons.video_camera_back,
    "Can": Icons.call,
    "Ayşe": Icons.video_camera_back,
    "Emre": Icons.call,
    "Deniz": Icons.video_camera_back,
    "Burak": Icons.call,
    "Selin": Icons.video_camera_back,
  };

  Map<String, String> saat = {
    "Arzu": "Dün 00:20",
    "Samet": "25 Şubat 12:35",
    "Hacer": "23 Şubat 15:11",
    "Mert": "Bugün 10:45",
    "Zeynep": "Dün 22:10",
    "Ali": "24 Şubat 08:30",
    "Elif": "Dün 17:15",
    "Berk": "22 Şubat 14:20",
    "Ece": "Bugün 19:50",
    "Can": "21 Şubat 11:05",
    "Ayşe": "Dün 21:00",
    "Emre": "23 Şubat 18:45",
    "Deniz": "Bugün 13:25",
    "Burak": "20 Şubat 16:10",
    "Selin": "Bugün 07:40",
  };

  Map<String, String> lastMessage = {
    "Arzu": "Ok mom",
    "Samet": "Ok dad",
    "Hacer": "Naaaapiyonnnn",
    "Mert": "Görüşürüz",
    "Zeynep": "Tamam",
    "Ali": "Ne zaman?",
    "Elif": "Evet",
    "Berk": "Haber ver",
    "Ece": "Anladım",
    "Can": "Geliyorum",
    "Ayşe": "Hayır",
    "Emre": "Sorun yok",
    "Deniz": "Bekliyorum",
    "Burak": "Selam",
    "Selin": "Tamamdır",
  };

  Map<String, Color> userColors = {
    "Arzu": const Color(0xFF4e1559),
    "Samet": const Color(0xFF003571),
    "Hacer": const Color(0xDA0399F5),
    "Mert": Colors.blueGrey,
    "Zeynep": Colors.greenAccent,
    "Ali": Colors.redAccent,
    "Elif": Colors.lightBlue,
    "Berk": Colors.orangeAccent,
    "Ece": Colors.yellowAccent,
    "Can": Colors.purpleAccent,
    "Ayşe": Colors.tealAccent,
    "Emre": Colors.pinkAccent,
    "Deniz": Colors.indigoAccent,
    "Burak": Colors.limeAccent,
    "Selin": Colors.deepOrangeAccent,
  };

  List<String> users = [
    "Arzu",
    "Samet",
    "Hacer",
    "Mert",
    "Zeynep",
    "Ali",
    "Elif",
    "Berk",
    "Ece",
    "Can",
    "Ayşe",
    "Emre",
    "Deniz",
    "Burak",
    "Selin",
  ];


  Widget _buildProfileIcon(String username){
    return CircleAvatar(
      radius: 25,
      backgroundColor: userColors[username],
      child: Icon(Icons.person,color: yaziRenk,size: 35,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaPlanRenk,
      appBar: AppBar(title: Text("Aramalar",style: TextStyle(color: yaziRenk),),backgroundColor: arkaPlanRenk,
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded,color: Colors.white,)),IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.white,))],
      bottom: PreferredSize(preferredSize: const Size.fromHeight(1), child: Container(height: 0.0625,color: Colors.white,)),),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Padding(
               padding: EdgeInsets.only(top: 8.0,left: 16.0),
               child: Text("Favoriler",style: TextStyle(color: Colors.white,fontSize: 16),),
             ),
            InkWell(
              onTap: (){},
              splashColor: Colors.white.withAlpha(30),
              highlightColor: Colors.white.withAlpha(50),
              child: SizedBox(width: double.infinity,height: 65,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(width: 50,height:40,decoration: BoxDecoration(color: butonRenk,shape: BoxShape.circle),child: const Icon(Icons.favorite,color: Colors.black,)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text("Favori Ekle",style: TextStyle(color: Colors.white,fontSize: 16),),
                )
              ],),),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0,left: 16.0),
              child: Text("En Son",style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
            ListView.builder(
              shrinkWrap: true, // Ekrandaki mevcut alan kadar sıkıştır
              physics: const NeverScrollableScrollPhysics(), // Ana sayfa içinde kaymayı engelle
              itemCount: users.length,
              itemBuilder: (BuildContext context,int index){
                String username = users[index];
                return ListTile(
                  contentPadding: const EdgeInsets.only(left: 8),
                  leading: _buildProfileIcon(username),
                  title: Column(
                    children: [
                      Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(username,style:  TextStyle(fontSize: 16,color: yaziRenk,fontWeight: FontWeight.bold),),
                              Row(
                                children: [
                                  Icon(cevap[username],color: cevapRenk[username],size: 16,),
                                  const SizedBox(width: 5,),
                                  Text(saat[username]!,style:  const TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),),
                                ],
                              ),
                          ],),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: IconButton(onPressed: (){}, icon: Icon(arama[username],color: Colors.white,))),
                        ],
                      ),
                    ],
                  ),
                );
              },),
          ],
        ),
      ),
      floatingActionButton: Container(width: 55,height: 55,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: butonRenk,),
      child:IconButton(onPressed: (){}, icon: const Icon(Icons.add_ic_call_sharp,color: Colors.black,)),
      ),
    );
  }
}
