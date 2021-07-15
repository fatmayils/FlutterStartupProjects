import 'package:flutter/material.dart';

//mateial app ın olmassa olmaz ı home parametresidir
//home dan sonra bir widget gelir
//uygulamamızın icon unu da değiştirdik bunun için
//https://appicon.co/
//yukarıdaki siteyi kullandık
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff00BFEC),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey[800],
            title: Text("Happy Birthday"),
          ),
          body: Center(
            //web deki bir resim
            /*child: Image.network(
              "https://gazetesu.sabanciuniv.edu/sites/gazetesu.sabanciuniv.edu/files/2013/bayram-mesaji-tr_0.jpg",
            ),
            */
            //klasördeki bir resim,images klasörünü pubspec.yaml dosyasına tanıttık
            child: Image.asset("images/image1.jpg"),
          )),
    ),
  );
}
