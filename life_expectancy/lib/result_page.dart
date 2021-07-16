import 'package:flutter/material.dart';
import 'package:life_expectancy/user_data.dart';
import 'calculate.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SONUÇ SAYFASI",
          style: style1,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
              child: Text("<<:::HESAP:::>>${Calculate(_userData).calculate().toString()}",style: style1,),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Geri Dön",
                style: style1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
