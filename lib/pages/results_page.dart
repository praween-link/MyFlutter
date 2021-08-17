import 'package:flutter/material.dart';
import 'package:testing_app/components/bottom_button.dart';
import 'package:testing_app/components/constants.dart';
import 'package:testing_app/components/reusable_card.dart';

import 'gauge.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.resultInterpetation,
  });

  final double bmiResult;
  final String resultText;
  final String resultInterpetation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Your Result",
                  style: cResultTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                usingColor: cActiveContainerColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: cResTextStyle,
                    ),
                    ////////////////////
                    SfRadialGaugeWidget(bmiResult: bmiResult),
                    Text(
                      resultInterpetation,
                      style: cDiscriptionTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE",
            ),
          ],
        ));
  }
}
