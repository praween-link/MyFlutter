import 'package:flutter/material.dart';
import 'package:testing_app/reusable_card.dart';

import 'bottom_button.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
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
                    Text("Natural", style: cResTextStyle,),
                    Text("50", style: cResultNumberStyle,),
                    Text("Hello, this is result of BMI calculation of any persion.", style: cDiscriptionTextStyle, textAlign: TextAlign.center,),
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
