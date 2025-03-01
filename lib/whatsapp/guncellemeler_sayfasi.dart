import 'package:flutter/material.dart';
import 'package:ornekler/whatsapp/renkler.dart';

class GuncellemelerSayfasi extends StatefulWidget {
  const GuncellemelerSayfasi({super.key});

  @override
  State<GuncellemelerSayfasi> createState() => _GuncellemelerSayfasiState();
}

class _GuncellemelerSayfasiState extends State<GuncellemelerSayfasi> {

  int kesfetListeSayisi = 3;
  List<String> takipEdilenKanallar =["REALKO", "WhatsApp",];


  var onerilenKanallar =[
    "Midas",
    "TRT 1",
    "Gelir İdaresi Başkanlığı",
    "Pendik Belediyesi",
    "Anadolu Ajansı",
  ];

  Map<String, String> takipciSayisi={
    "REALKO" : "5 B takipçi",
    "WhatsApp" : "224 Mn takipçi",
    "Midas" : "20 Mn takipçi",
    "TRT 1" : "500 B takipçi",
    "Gelir İdaresi Başkanlığı" : "241 B takipçi",
    "Pendik Belediyesi" : "12 B takipçi",
    "Anadolu Ajansı" : "995 B takipçi",
  };

  Map<String,Color> userColors={
    "REALKO" : Color(0xFFFF0000),
    "WhatsApp" : Color(0xFF2FFF00),
    "Midas" :  Color(0xFF003CFF),
    "TRT 1": Color(0xFFAE00FF),
    "Gelir İdaresi Başkanlığı" : Color(0xFFE6FF00),
    "Pendik Belediyesi": Color(0xFF00FFFF),
    "Anadolu Ajansı": Color(0xFF6806CD),
  };

  Widget _buildProfileIcon(String username){
    return CircleAvatar(
      radius: 25,
      backgroundColor: userColors[username],
      child: Icon(Icons.person,color: yaziRenk,size: 45,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF081115),
      appBar: AppBar(title: Text("Güncellemeler",style: TextStyle(color: yaziRenk),),
      bottom: PreferredSize(preferredSize: const Size.fromHeight(1.0), // İnce bir çizgi eklemek için yükseklik 1
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(color: yaziRenk,height: 0.0625,),
      )),
      backgroundColor: Color(0xFF081115),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded),color: yaziRenk,),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: yaziRenk,),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Durum",style: TextStyle(color: yaziRenk,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF0C181E),),
              height: 75,
              width: 350,
            child: Row(children: [
              Container(
                  decoration: BoxDecoration(
                      color: yaziRenk,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(Icons.person,color: arkaPlanRenk,size: 50,)),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Durum güncellemesi ekle",style: TextStyle(color: yaziRenk,fontWeight: FontWeight.w500,fontSize: 16),),
                    Text("24 saat sonra kaybolur",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
            ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
              child: Row(
                children: [
                  Text("Kanallar",style: TextStyle(color: yaziRenk,fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("Keşfet",style: TextStyle(color: butonRenk),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15,color: butonRenk,))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: takipEdilenKanallar.length + onerilenKanallar.length + 1, // +1, listeler arasına başlık eklemek için
                itemBuilder: (context, index) {
                  // İlk liste (Takip edilen kanallar)
                  if (index < takipEdilenKanallar.length) {
                    String username = takipEdilenKanallar[index];
                    return Row(
                      children: [
                        _buildProfileIcon(username),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(username, style: TextStyle(color: yaziRenk)),
                              Text(takipciSayisi[username]!, style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                  // Listeler arasında başlık eklemek için
                  if (index == takipEdilenKanallar.length) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text("Önerilen Kanallar", style: TextStyle(color: yaziRenk, fontSize: 20, fontWeight: FontWeight.bold)),
                    );
                  }
                  // İkinci liste (Önerilen kanallar)
                  int newIndex = index - takipEdilenKanallar.length - 1;
                  while(newIndex < kesfetListeSayisi){
                    String username = onerilenKanallar[newIndex];
                    return Row(
                      children: [
                        _buildProfileIcon(username),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(username, style: TextStyle(color: yaziRenk)),
                              Text(takipciSayisi[username]!, style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF053200),
                              minimumSize: Size(35, 35)),
                          child: Text("Takip et",style: TextStyle(color: Colors.white70),),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
        ElevatedButton(onPressed: (){
          setState(() {
            kesfetListeSayisi = 5;
          });
        },style: ElevatedButton.styleFrom(
            backgroundColor: arkaPlanRenk,
          side: BorderSide(width: 0.25,color: Colors.grey),
        ),child: Text("Daha fazlasını keşfet",style: TextStyle(color: butonRenk),)),
          ],
        ),
      ),
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(width: 40,height: 40,
                child: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit,color: yaziRenk,),backgroundColor: Color(0xFF1F1F22),)),
          ),
          SizedBox(height: 10),
          FloatingActionButton(onPressed: (){},child: Icon(Icons.add_a_photo),backgroundColor: butonRenk,),
        ],),
    );
  }
}
