import 'package:flutter/material.dart';

import 'icon_content.dart';
import 'reusable_card.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFF5f0066);
const activeContainerColor = Color(0xFF1e213e);
const unactiveContainerColor = Color(0xFFf7f7f7);

enum Gender{
  male,
  female,
  unset,
}
Gender selected = Gender.unset;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                        onTap: () {
                          setState(() {
                            selected == Gender.male ? selected = Gender.unset : selected = Gender.male;
                          });
                        },
                        child: ReusableCard(
                          usingColor: selected == Gender.male ? Color(0xFF242852) : activeContainerColor,
                          childCard: IconContent(
                            genderIcon: Icons.male,
                            genderLevel: "MALE",
                            levelColor: selected == Gender.male ? Color(0xFFFFFFFF) : Color(0xFFc7c7c7),
                            levelSize: selected == Gender.male ? 20.0 : 16.0,
                          ),
                        )),
                  ),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected == Gender.female ? selected = Gender.unset : selected = Gender.female;
                            });
                          },
                          child: ReusableCard(
                            usingColor: selected == Gender.female ? Color(0xFF242852) : activeContainerColor,
                            childCard: IconContent(
                              genderIcon: Icons.female,
                              genderLevel: "FEMALE",
                              levelColor: selected == Gender.female ? Color(0xFFFFFFFF) : Color(0xFFc7c7c7),
                              levelSize: selected == Gender.female ? 20.0 : 16.0,
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
                    child: ReusableCard(usingColor: activeContainerColor,),
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
