import 'package:flutter/material.dart';
import 'package:simple_student_tracking_system/screens/student_add.dart';

import 'models/student.dart';


final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() => runApp(MyApp());

//flutter de her şey widget,ağaç yapısı gibi widgetlerin birbirine eklenmesiyle oluşur
//widget küçük ekran parçası olarak düşünülebilir
//bir classın widget olması için widget ailesinden extends edilmeli
class MyApp extends StatelessWidget {
  //ilk başta altı çiziliydi,çünkü içinde override etmen gereken bir metod var
  @override
  Widget build(BuildContext context) {
    //fonk un içini biz doldurduk,
    return MaterialApp(
        //material standartlarına göre tasarım yapacağız
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return _HomeScreenState();
  }

}

class _HomeScreenState extends State {

  List<Student> students=[
    Student("Fatma","Yıldırım",94),
    Student("Zeynep","Yıldırım",64),
    Student("Gül","Yıldırım",94),
    Student("Esma","Yıldırım",24),
    Student("Enem","Yıldırım",44),];

Student selectedStudent=Student.withId(0,"", "", 0);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Takip Sistemi"),
      ),
      body: buildBody()
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(//widged listview için
          child: ListView.builder(
              itemCount: students.length,
              itemBuilder:(BuildContext context,int index){
return ListTile(
  title: Text(students[index].firstName+" "+students[index].lastName),
  subtitle: Text("Sınavdan aldığı not: "+students[index].grade.toString()+"["+students[index].getStatus+"]"),
  leading: CircleAvatar(
    backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1267595491799416845/kbjfWjjt_400x400.jpg"),
  ),
  trailing:buildStatusIcon(students[index].grade),
  onTap: (){
    setState(() {
      this.selectedStudent=students[index];
    });

  },
  onLongPress: (){
    print("Uzun basıldı");
  },
);
              }),
        ),
        Text("Seçili öğrenci "+selectedStudent.firstName),
        Row(
          children:<Widget> [
            Flexible(
              fit:FlexFit.tight,
              flex: 2,
              child: RaisedButton(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),
                    SizedBox(width: 5.0,),
                    Text("Yeni öğrenci")
                  ],
                ),
                onPressed: () {  
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentAdd(students)));//başka sayfaya yönlendirme
                },
              ),
            ),
            Flexible(
              fit:FlexFit.tight,
              flex: 1,
              child: RaisedButton(
                color: Colors.amberAccent,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),
                    SizedBox(width: 5.0,),
                    Text("Sil")
                  ],
                ),
                onPressed: () {
                  print("Öğrenci silindi");
                },
              ),
            ),
            Flexible(
              fit:FlexFit.tight,
              flex: 2,
              child: RaisedButton(
                color: Colors.green,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),
                    SizedBox(width: 5.0,),
                    Text("Güncelle")
                  ],
                ),
                onPressed: () {
                  print("Öğrenci güncellendi");
                },
              ),
            )
          ],
        )
      ],
    );
  }

  buildStatusIcon(int grade) {
    if(grade>=50)
      {
        return Icon(Icons.done);
      }
    else if(grade>40)
    {
      return Icon(Icons.album);
    }
    else{
      return Icon(Icons.clear);
    }
  }
}
