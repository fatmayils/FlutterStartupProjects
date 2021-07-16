import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue[300],//app bar ın rengi
        scaffoldBackgroundColor: Colors.lightBlue[300],//scfold un body si
      ),
      home: InputPage(),
    );
  }
}

