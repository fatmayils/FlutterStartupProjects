import 'package:flutter/material.dart';

void main() {
  runApp(ListViewMap());
}
class ListViewMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> names=["ali","veli","fatma","ayşe","mehmet","sultan","ferhat","sevda"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listview Map"),
        ),
        body: Center(
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount:names.length ,
            itemBuilder: (context,index)
            {
              var containers=names.map((name)=>Container(margin: EdgeInsets.all(8),color:Colors.lightBlue,child: Text(name))).toList();
              return containers[index];
            },
          ),
        ),

      ),
    );
  }
}
