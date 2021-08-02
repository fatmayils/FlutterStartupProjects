import 'package:flutter/material.dart';

void main() {
  runApp(ListViewSeparated());
}
class ListViewSeparated extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> names=["ali","veli","fatma","ayşe","mehmet","sultan","ferhat","sevda"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listview Map"),
        ),
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.3,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              separatorBuilder: (context,_){
                return VerticalDivider(width:10, color: Colors.black,);
              },
              itemCount:names.length ,
              itemBuilder: (context,index)
              {
//yükseklik 100 ama genişlik 100 olmadı,parent den dolayı
              //bu nedenle fractional.... kullandık ve ekranın yüzde x ini genişlik olarak kapla dedik
                var containers=names.map((name)=>Container(height:100,width:100,margin: EdgeInsets.all(8),color:Colors.lightBlue,child: Text(name))).toList();
                return containers[index];
              },
            ),
          ),
        ),

      ),
    );
  }
}
