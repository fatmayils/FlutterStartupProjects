import 'package:flutter/material.dart';

void main() {
  runApp(ListViewPage());
}

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Demo"),
        ),
        //listview bize kaydırılabilir bir ekran sunuyor
        //column gibi bir yapı ama column da kaydırma yok overflow oluyor
        body: ListView.builder(
          itemCount: 19,
          padding: EdgeInsets.all(8),
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(index.toString()),
              tileColor: Colors.pinkAccent,
            );
          },

         /* children: <Widget>[
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.pinkAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.purpleAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.pinkAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.purpleAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.pinkAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.purpleAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.pinkAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.purpleAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.pinkAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              title: Text("txt1"),
              tileColor: Colors.purpleAccent,
            ),
          ],*/
        ),
      ),
    );
  }
}
