import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/user_data.dart';
import 'constants.dart';
import 'icon_gender_container.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? chosenGender;
  double smokingCigarette = 6.0;
  double numberOfDaysOfSport = 4.0;
  int height = 110;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BEKLENEN YAŞAM SÜRESİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlineButton("BOY"),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlineButton("KİLO"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Haftada kaç gün spor yapıyorsunuz?",
                    style: style1,
                  ),
                  Text(
                    numberOfDaysOfSport.round().toString(),
                    style: style2,
                  ),
                  Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: numberOfDaysOfSport,
                      onChanged: (double newValue) {
                        setState(() {
                          numberOfDaysOfSport = newValue;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Günde kaç sigara içiyorsunuz?", style: style1),
                  Text(
                    smokingCigarette.round().toString(),
                    style: style2,
                  ),
                  Slider(
                      min: 0,
                      max: 30,
                      value: smokingCigarette,
                      onChanged: (double newValue) {
                        setState(() {
                          smokingCigarette = newValue;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        chosenGender = "KADIN";
                      });
                    },
                    color: chosenGender == "KADIN" ? Colors.red : Colors.white,
                    child: IconGenderContainer(
                      gender: "KADIN",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        chosenGender = "ERKEK";
                      });
                    },
                    color: chosenGender == "ERKEK"
                        ? Colors.lightBlue
                        : Colors.white,
                    child: IconGenderContainer(
                      icon: FontAwesomeIcons.mars,
                      gender: "ERKEK",
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      UserData(
                          smokingCigarette: smokingCigarette,
                          numberOfDaysOfSport: numberOfDaysOfSport,
                          height: height,
                          weight: weight,
                          chosenGender: chosenGender),
                    ),
                  ),
                );
              },
              color: Colors.white,
              child: Text(
                "HESAPLA",
                style: style1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildRowOutlineButton(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            name,
            style: style1,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        RotatedBox(
            quarterTurns: 3,
            child: Text(
              name == "BOY" ? height.toString() : weight.toString(),
              style: style2,
            )),
        SizedBox(
          width: 10.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 36.0,
              child: OutlineButton(
                onPressed: () {
                  setState(() {
                    name == "BOY" ? height++ : weight++;
                  });
                },
                borderSide: BorderSide(color: Colors.lightBlue),
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlineButton(
                onPressed: () {
                  setState(() {
                    name == "BOY" ? height-- : weight--;
                  });
                },
                borderSide: BorderSide(color: Colors.lightBlue),
                child: Icon(FontAwesomeIcons.minus, size: 10),
              ),
            ),
          ],
        )
      ],
    );
  }
}
