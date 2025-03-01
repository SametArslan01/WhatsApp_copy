import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String resim1 = "https://firebasestorage.googleapis.com/v0/b/bitirme-projesi-e5b49.firebasestorage.app/o/images%2Fmotor.jpg?alt=media&token=c72f1fd6-187d-4f00-bec9-7eb043c9ce91";
  String resim2 = "https://firebasestorage.googleapis.com/v0/b/bitirme-projesi-e5b49.firebasestorage.app/o/images%2Fizmir.jpg?alt=media&token=f024cd85-81c8-4c45-b2c7-7598f4e30bcb ";
  String aktifResim = "";
    int groupValue = 0 ;
  bool switchKontrol = false;
  bool checkboxKontrol = false;
  bool progressKontrol = false;
  String alinanVeri = "";
  final tfVeri = TextEditingController();
  double ilerleme = 50.0;
  final tfTarih = TextEditingController();
  final tfSaat = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";


  @override
  void initState() {
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("Japonya");
    ulkelerListesi.add("İtalya");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets"),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tfVeri,
                  decoration: const InputDecoration(hintText: "Veri"),
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  alinanVeri = tfVeri.text;
                });
              }, child: const Text("Veriyi al")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      aktifResim = resim1;
                    });
                  }, child: const Text("Resim 1")),
                  SizedBox(
                    width: 48,height: 48,
                      child: Image.network(aktifResim)),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      aktifResim = resim2;
                    });
                  }, child: const Text("Resim 2")),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 175,
                    child: RadioListTile(
                      title: const Text("Barcelona"),
                        value: 1,
                        groupValue: groupValue,
                        onChanged: (veri){
                          setState(() {
                            groupValue = 1;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 175,
                    child: RadioListTile(
                      title: const Text("Real Madrid"),
                        value: 2,
                        groupValue: groupValue,
                        onChanged: (veri){
                          setState(() {
                            groupValue = 2;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 175,
                    child: SwitchListTile(
                      title: const Text("Dart"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: switchKontrol,
                        onChanged: (veri){
                      setState(() {
                        switchKontrol = veri;
                      });
                    }),
                  ),
                  SizedBox(width:  175,
                    child: CheckboxListTile(
                      title: const Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: checkboxKontrol,
                        onChanged: (veri){
                      setState(() {
                        checkboxKontrol = veri!;
                      });
                    }),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      progressKontrol = true;
                    });
                  }, child: const Text("Başla")),
                 Visibility(visible: progressKontrol,child: const CircularProgressIndicator()),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      progressKontrol = false;
                    });
                  }, child: const Text("Dur")),
                ],
              ),
              Text(ilerleme.toInt().toString()),
              Slider(max: 100.0,min: 0.0,value: ilerleme, onChanged: (veri){
                setState(() {
                  ilerleme = veri;
                });
              }),
              Row(
                children: [
                  SizedBox(width: 120,
                  child:TextField(
                    controller: tfSaat,
                  ),
                    ),
                  IconButton(onPressed: (){
                    showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now())).then((value){
                      tfSaat.text = "${value!.hour} : ${value.minute}";
                    });
                  }, icon: const Icon(Icons.access_time_filled)),
                  SizedBox(width: 120,
                    child:TextField(
                      controller: tfTarih,
                    ),
                  ),
                  IconButton(onPressed: (){
                    showDatePicker(context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050),
                      initialDate: DateTime.now(),
                    ).then((value){
                      tfTarih.text = "${value!.day} / ${value.month} / ${value.year}";
                    });
                  }, icon: const Icon(Icons.date_range)),
                ],
              ),
              DropdownButton(
                value: secilenUlke,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: ulkelerListesi.map((ulke){
                    return DropdownMenuItem(value: ulke,child: Text(ulke));
                  }).toList(),
                  onChanged: (veri){
                  setState(() {
                    secilenUlke = veri!;
                  });
                  }),
              GestureDetector(
                onTap: (){
                  print("Bir kez tıklandı");
                },
                onDoubleTap: (){
                  print("İki kez tıklandı");
                },
                onLongPress: (){
                  print("Basılı tutuldu");
                },child: Container(width: 175,height: 100,color: Colors.red,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
