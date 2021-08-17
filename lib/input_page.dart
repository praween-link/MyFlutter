import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
  unset,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selected = Gender.unset;
  int height = 120;
  int weight = 20;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selected == Gender.male
                              ? selected = Gender.unset
                              : selected = Gender.male;
                        });
                      },
                      usingColor: selected == Gender.male
                          ? Color(0xFF242852)
                          : cActiveContainerColor,
                      childCard: IconContent(
                        icons: Icons.male,
                        levels: "MALE",
                        levelColor: selected == Gender.male
                            ? Color(0xFFFFFFFF)
                            : cTextColor,
                        levelSize: selected == Gender.male ? 20.0 : cTextSize,
                      ),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected == Gender.female
                            ? selected = Gender.unset
                            : selected = Gender.female;
                      });
                    },
                    usingColor: selected == Gender.female
                        ? Color(0xFF242852)
                        : cActiveContainerColor,
                    childCard: IconContent(
                      icons: Icons.female,
                      levels: "FEMALE",
                      levelColor: selected == Gender.female
                          ? Color(0xFFFFFFFF)
                          : cTextColor,
                      levelSize: selected == Gender.female ? 20.0 : cTextSize,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                usingColor: cActiveContainerColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: cTextColor,
                        fontSize: cTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: cNumberStyle,
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: cTextColor,
                            fontSize: cTextSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFF7c0963),
                        overlayColor: Color(0x697c0963),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        // activeColor: Color(0xFF7c0963),
                        // inactiveColor: Color(0xFF6226b5),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      usingColor: cActiveContainerColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              color: cTextColor,
                              fontSize: cTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: cNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPres: () {
                                  setState(() {
                                    if (weight != 2) {
                                      weight--;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPres: () {
                                  setState(() {
                                    if (weight != 200) {
                                      weight++;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      usingColor: cActiveContainerColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "AGE",
                            style: TextStyle(
                              color: cTextColor,
                              fontSize: cTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: cNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPres: () {
                                  setState(() {
                                    if (age != 1) {
                                      age--;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPres: () {
                                  setState(() {
                                    if (age != 150) {
                                      age++;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: cBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: cBottomContainerHeight,
            ),
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPres});

  final IconData icon;
  final Function onPres;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPres,
      child: Icon(icon),
      elevation: 12.0,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
