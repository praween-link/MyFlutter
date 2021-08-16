import 'package:flutter/material.dart';

import 'icon_content.dart';
import 'reusable_card.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFF5f0066);
const activeContainerColor = Color(0xFF1e213e);
const unactiveContainerColor = Color(0xFFf7f7f7);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  int select = 0;
  
  Color selected_color1 = Color(0xFFc7c7c7);
  Color selected_color2 = Color(0xFFc7c7c7);
  double selected_size1 = 16.0;
  double selected_size2 = 16.0;

  void selectGender(bool selected) {
    setState(() {
      if(selected) {
        if(select == 1) {
          select = 0;
          selected_color1 = Color(0xFFc7c7c7);
          selected_size1 = 16.0;
        }
        else {
          select = 1;
          selected_color1 = Color(0xFFFFFFFF);
          selected_color2 = Color(0xFFc7c7c7);
          selected_size1 = 20.0;
          selected_size2 = 16.0;
        }
      }

      else {
        if(select == 2) {
          select = 0;
          selected_color2 = Color(0xFFc7c7c7);
          selected_size2 = 16.0;
        }
        else {
          select = 2;
          selected_color2 = Color(0xFFFFFFFF);
          selected_color1 = Color(0xFFc7c7c7);
          selected_size2 = 20.0;
          selected_size1 = 16.0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                        onTap: () => selectGender(true),
                        child: ReusableCard(
                          usingColor: select == 1 ? Color(0xFF242852) : activeContainerColor,
                          childCard: IconContent(
                            genderIcon: Icons.male,
                            genderLevel: "MALE",
                            levelColor: selected_color1,
                            levelSize: selected_size1,
                          ),
                        )),
                  ),
                  Expanded(
                      child: GestureDetector(
                          onTap: () => selectGender(false),
                          child: ReusableCard(
                            usingColor: select == 2 ? Color(0xFF242852) : activeContainerColor,
                            childCard: IconContent(
                              genderIcon: Icons.female,
                              genderLevel: "FEMALE",
                              levelColor: selected_color2,
                              levelSize: selected_size2,
                            ),
                          ))),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(usingColor: activeContainerColor),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(usingColor: activeContainerColor),
                  ),
                  Expanded(
                    child: ReusableCard(usingColor: activeContainerColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
