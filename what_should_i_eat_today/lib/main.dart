import 'package:flutter/material.dart';

void main() {
  runApp(FoodList());
}

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Bugün ne yesem",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int corbaNo = 1, yemekNo = 2, tatliNo = 3;
  List<String> corbalar = ["corba1", "corba2", "corba3", "corba4", "corba5"];
  List<String> yemekler = ["yemek1", "yemek2", "yemek3", "yemek4", "yemek5"];
  List<String> tatlilar = ["tatli1", "tatli2", "tatli3", "tatli4", "tatli5"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  setState(() {
                    corbaNo++;
                    if (corbaNo == 6) {
                      corbaNo = 1;
                    }
                  });
                },
                child: Image.asset("assets/images/corba$corbaNo.jpg"),
              ),
            ),
          ),
          Text(
            corbalar[corbaNo - 1],
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
          Container(
            width: 150.0,
            child: Divider(
              height: 5.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  setState(() {
                    yemekNo++;
                    if (yemekNo == 6) {
                      yemekNo = 1;
                    }
                  });
                },
                child: Image.asset("assets/images/yemek$yemekNo.jpg"),
              ),
            ),
          ),
          Text(
            yemekler[yemekNo - 1],
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
          Container(
            width: 150.0,
            child: Divider(
              height: 5.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  setState(() {
                    tatliNo++;
                    if (tatliNo == 6) {
                      tatliNo = 1;
                    }
                  });
                },
                child: Image.asset("assets/images/tatli$tatliNo.jpg"),
              ),
            ),
          ),
          Text(
            tatlilar[tatliNo - 1],
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
