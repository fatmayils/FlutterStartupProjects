import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(FortuneTeller());
}

class FortuneTeller extends StatefulWidget {
  @override
  State<FortuneTeller> createState() => _FortuneTellerState();
}

class _FortuneTellerState extends State<FortuneTeller> {
  List<String> fallar = ["!!!Tıkla Falın Gelsin!!!",
    "İki tane yolun var ikisi de aynı yere çıkıyor ama dikkat et birisi engellerle dolu, diğeri aydınlık. Seçim senin elinde olacak.",
    "Bir uzak bir kısa yolun var. Kısa yoldan gidersen ite dalanırsın, uzak yoldan gidersen çalıya dolanırsın en güzeli sen evde otur.",
    "Sana bir haber gelecek ama sen kapıda, bacada pencere de bekleme, haber olmadık anda, olmadık yerde gelebilir, olmadı gelmeyebilir de.",
    "Bak güzel kızım senin bir sevdiğin var o da seni seviyor ama oralarda bir de bak bak kuyruğu görünüyor bir kara kedi dolaşıyor aranıza girmeye çalışıyor.",
    "Bak şurda bir yol var yolun başında hazır bir at duruyor, yükünü tutmuş yolculuğa çıkacak gibi ama bir kuş geliyor gagasında bir mektup var, sonra at huysuzlanıyor kaçıyor kuş attan ürküp uçup gidiyor, yolda çalışma varmış yol kapanıyor. Sana bir şey kalmadı.",
    " Falında anahtar görüyorum, hayalini kurduğu ev ya da arabaya kavuşuyorsun.",
    " At şaha kalkmış. İş hayatında yükselme yaşanacak.",
    " Hanene ay doğmuş ama sen bunun fakında değilsin.",
    "Çok başarılı olacaksın,işinde terfi alacaksın",
    "Sen bu işten vazgeç,yolun kapalı,elindeki işten de olma.",
    "Güneş gibi ol şefkatte, merhamette Gece gibi ol ayıpları örtmekte Akarsu gibi ol keremde, cömertlikte Ölü gibi ol öfkede, asabiyette Toprak gibi ol tevazuda, mahviyette YA OLDUĞUN GİBİ GÖRÜN, YA DA GÖRÜNDÜĞÜN GİBİ OL!",
    "Sırf seviyorsun diye, birinin seni incitmesine asla izin verme!",
    "İstediğin olmuyor diye üzülme. Ya daha iyisi olur ya da hayırlısı budur",
    "Kimsenin lafıyla dolduruşa gelme, ama aklının bir köşesinde de tut.",
    "Her bildiğini söyleme, fakat her söylediğini mutlaka bil."
  ];

  int tiklanan = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text(
            "Günün Falı",
            style: TextStyle(color: Colors.white, fontSize: 28.0),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/fal.png",
                width: 200,
              ),
              FlatButton(
                splashColor: Colors.cyan,
                highlightColor: Colors.cyan,
                onPressed: () {
                  setState(() {
                    tiklanan = Random().nextInt(5) + 1;
                  });

                },
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 30.0,
                        height: 50.0,
                      ),
                      Text(
                        "AŞK DURUMU",
                        style: TextStyle(color: Colors.red, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                splashColor: Colors.cyan,
                highlightColor: Colors.cyan,
                onPressed: () {
                  setState(() {
                    tiklanan = Random().nextInt(5) + 6;
                  });

                },
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 30.0,
                        height: 50.0,
                      ),
                      Text(
                        "PARA DURUMU",
                        style: TextStyle(color: Colors.green, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                splashColor: Colors.cyan,
                highlightColor: Colors.cyan,
                onPressed: () {
                  setState(() {
                    tiklanan = Random().nextInt(5) + 11;
                  });

                },
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.visibility,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 30.0,
                        height: 50.0,
                      ),
                      Text(
                        "GÜNLÜK TAVSİYE",
                        style: TextStyle(color: Colors.blue, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                child: Text(fallar[tiklanan],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
