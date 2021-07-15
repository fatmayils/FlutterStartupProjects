import 'package:flutter/material.dart';

void main() {
  runApp(CoffeApp());
}

//stateless durağan widget,kullanıcıyla etkileşimde değil,1 kere çiziyor ekranı
class CoffeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff6d0633),
        body: SafeArea(
          //görüntünün gözükmesi için,çeltiğin üzerine gelmemesi için
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/images.png"),
                ),
                Text(
                  "Flutter Kahvecisi",
                  style: TextStyle(
                    fontFamily: "Italianno",
                    color: Colors.yellow[300],
                    fontSize: 45,
                  ),
                ),
                Text(
                  "Bir fincan uzağınızda",
                  style: TextStyle(
                    color: Color(0xff005e5b),
                    fontSize: 21,
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Divider(
                    height: 30.0,
                    color: Colors.yellow[300],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  color: Color(0xff5d0619),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 65,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      "kahve@flutter.com",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  color: Color(0xff5d0619),
                  margin: EdgeInsets.symmetric(
                    horizontal: 42.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 65,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      "09876545678",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
