import 'package:flutter/material.dart';
import 'package:simple_student_tracking_system/models/student.dart';
class StudentAdd extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StudentAddState();
  }
  List<Student> students;
  /*StudentAdd(List<Student> students){
this.students=students;
  }*/
StudentAdd(this.students);

}

class _StudentAddState extends State<StudentAdd>{
  var formKey=GlobalKey<FormState>();
  Student student=Student("","",0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yeni öğrenci"),),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              buildFirstNameField(),
              buildLastNameField(),
              buildGradeField(),
              buildSubmitButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFirstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci adı",hintText: "Ad giriniz"),
      onSaved: (String ? value){
        student.firstName=value!;
      },
    );
  }
  Widget buildLastNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Öğrenci soyadı",hintText: "Soyadgiriniz"),
      onSaved: (String ? value){
        student.lastName=value!;
      },
    );
  }Widget buildGradeField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Aldığı not",hintText: "Not giriniz"),
      onSaved: (String ? value){
        student.grade=int.parse(value!);
      },
    );
  }
  Widget buildSubmitButton() {
    return RaisedButton(
      child: Text("Kaydet"),
      onPressed: () {
formKey.currentState!.save();
widget.students.add(student);
Navigator.pop(context);
      },

    );
  }
}